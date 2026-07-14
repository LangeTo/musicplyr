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

#' @title NSYNC
#'
#' @description
#' Are they actually still i**n-sync**?
#'
#' @param justin A value to compare.
#'
#' @param jc A value to compare.
#'
#' @param chris A value to compare.
#'
#' @param joey A value to compare.
#'
#' @param lance A value to compare.
#'
#' @export
n_sync <- function(
  justin = NULL,
  jc = NULL,
  chris = NULL,
  joey = NULL,
  lance = NULL
) {
  message(
    "
    #####################################
    It's tearin' up my heart when I'm with you ...
    #####################################
    "
  )

  play_music("spotify:track:62bOmKYxYg7dhrC6gH9vFn")

  nsync <- Filter(Negate(is.null), list(justin, jc, chris, joey, lance))

  if (!length(unique(nsync)) <= 1) {
    message("Apparently, they are not ...")
  } else {
    message("Yes, listen, they still got it!")
  }
}
