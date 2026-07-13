#' @title Fill Collins
#'
#' @description
#' Fill a collin!
#'
#' @param .data A data frame to add a new column to.
#'
#' @param value The value to fill the new column with.
#'
#' @param play Logical, whether to play the track on Spotify.
#'
#' @export
fill_collins <- function(.data, value, play = FALSE) {
  message(
    "
    #####################################
    I can feel coming in the air tonight!
    #####################################
    "
  )

  if (play) {
    play_music("spotify:track:6mYXXXgFZZmk2mgejwSwdN")
  }

  mutate(.data, FilledCollin = value)
}

#' @title Phil columns
#'
#' @description
#' Phil a column!
#'
#' @param .data A data frame to add a new column to.
#'
#' @param value The value to fill the new column with.
#'
#' @param play Logical, whether to play the track on Spotify.
#'
#' @export
phil_columns <- function(.data, value, play = FALSE) {
  message(
    "
    #####################################
    I can feel coming in the air tonight!
    #####################################
    "
  )

  if (play) {
    play_music("spotify:track:6mYXXXgFZZmk2mgejwSwdN")
  }

  mutate(.data, Philed_Column = value)
}

#' @title System off/down
#'
#' @description
#' System off!
#' System down ...
#' Be careful, do you really want this?
#'
#' @export
system_off_down <- function() {
  message(
    "
    #####################################
    Conversion, software version 7.0 ...
    #####################################
    "
  )

  off_down <- tolower(readline(
    prompt = "Are you sure you want to see system off/down live? [y/n]: "
  ))

  while (!off_down %in% c("y", "n")) {
    off_down <- tolower(readline(
      prompt = "Please enter 'y' or 'n': "
    ))
  }

  play_music("spotify:track:0snQkGI5qnAmohLE7jTsTn")

  if (off_down == "y") {
    while (TRUE) {
      cat("\014")
      Sys.sleep(10)
      message("This is System off/down live ...")
      Sys.sleep(10)
      message("Yes, it's a long concert ...")
      Sys.sleep(10)
      message("One more song, one more song!")
      Sys.sleep(10)
      q("no")
    }
  } else {
    message("Ok, but you can always run `system_off_down()` again.")
  }
}

#' @title Slizz top
#'
#' @description
#' Slizze the top of your data frame.
#'
#' @param .data A data frame to be slizzed.
#'
#' @param ... Additional arguments passed to `slice_head()`.
#'
#' @param play Logical, whether to play the track on Spotify.
#'
#' @export
slizz_top <- function(.data, ..., play = FALSE) {
  message(
    "
    #####################################
    Rumor spreading 'round ...
    #####################################
    "
  )

  if (play) {
    play_music("spotify:track:0u6JFVn0KHHlidZxNL9gVE")
  }

  slice_head(.data, ...)
}

#' @title Billy idle
#'
#' @description
#' Check if your value is true.
#'
#' @param val A logical value to check.
#'
#' @export
billy_idle <- function(val) {
  message(
    "
    #####################################
    I'm dacing with myself...
    #####################################
    "
  )

  play_music("spotify:track:3rQfYDjgpRy5LFlClpPQW9")

  if (is.logical(val)) {
    if (isTRUE(val)) {
      TRUE
    }
  }
}

#' @title SlayR
#'
#' @description
#' Slay your R session.
#'
#' @export
slay_r <- function() {
  message(
    "
    #####################################
    Abolish the rules made of stone.
    #####################################
    "
  )

  play_music("spotify:track:4fiOTntQKr24p07FvQDHZE")

  q("no")
}

#' @title Rolling Stones
#'
#' @description
#' Roll a few stones and eventually set a seed.
#'
#' @export
rolling_a_stone <- function() {
  message(
    "
    #####################################
    I can't get no satisfaction ...
    #####################################
    "
  )

  play_music("spotify:track:2PzU4IB8Dr6mxV3lHuaG34")

  message(sample.int(1000, 1))
  message("...")
  Sys.sleep(1)
  message(sample.int(1000, 1))
  Sys.sleep(1)
  message("...")
  message(sample.int(1000, 1))
  Sys.sleep(1)
  message("...")

  val <- sample.int(1000, 1)
  message("Your satisfaction is: ", val)
  set.seed(val)
}

#' @title Linkin pack
#'
#' @description
#' Check the links of a package to other packages.
#'
#' @export
linkin <- function(pack) {
  df <- as.data.frame(installed.packages())

  if (!pack %in% df$Package) {
    message("Pack not linked ... ")
    return(invisible())
  }

  message(paste0(pack, " DEPENDS ON:\n", df$Depends[df$Package == pack], "\n"))
  message(paste0(pack, " IMPORTS:\n", df$Imports[df$Package == pack], "\n"))
  message(paste0(pack, " SUGGESTS:\n", df$Suggests[df$Package == pack]))
}
