#' @title Tupack your files
#'
#' @description
#' Tupack files in an archive.
#'
#' @param ... Arguments passed to `zip()`.
#'
#' @export
tupack <- function(...) {
  message(
    "
    #####################################
    We gotta start makin' changes ...
    #####################################
    "
  )
  play_music("spotify:track:1ofhfV90EnYhEr7Un2fWiv")
  zip(...)
}
