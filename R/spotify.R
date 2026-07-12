#' @title Play music from R
#'
#' @description
#' Start to play a song on your local Spotify from the R console. Standalone this is pretty useless, but makes total sense in **musicplyr**...
#'
#' @param track A Spotify track in this format: `"spotify:track:6mYXXXgFZZmk2mgejwSwdN?si"`
#'
#' @export
play_music <- function(track) {
  # Get the system type
  os <- Sys.info()[["sysname"]]

  # Check if spotify is running
  # May need to be adjusted for Linux and Windows after tests of these devices
  running <- switch(
    os,
    Darwin = system("pgrep -x Spotify", ignore.stdout = TRUE, intern = FALSE),
    Linux = system("pgrep -x spotify", ignore.stdout = TRUE, intern = FALSE),
    Windows = system(
      "tasklist /FI \"IMAGENAME eq Spotify.exe\" /NH",
      ignore.stdout = TRUE,
      intern = FALSE
    )
  )

  # Return invisible, if Spotify not running
  if (running != 0) {
    message(
      "
      No running Spotify client found.
      Please start/install Spotify to get
      the full musicplyr experience.
      "
    )
    return(invisible())
  }

  # Play the track using the appropriate command for the OS
  tryCatch(
    switch(
      os,
      Darwin = system(
        paste0(
          "osascript -e 'tell application \"Spotify\" to play track \"",
          track,
          "\"'"
        ),
        ignore.stdout = TRUE,
        ignore.stderr = TRUE
      ),
      Linux = system(
        paste0("xdg-open spotify:", track),
        ignore.stdout = TRUE,
        ignore.stderr = TRUE
      ),
      Windows = shell(
        paste0("start spotify:", track),
        wait = FALSE
      )
    ),
    error = function(e) invisible()
  )
}
