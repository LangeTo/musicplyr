#' @title Liszt your files
#'
#' @description
#' Liszt all files in a directory.
#'
#' @param ... Arguments passed to `list.files()`.
#'
#' @export
liszt.files <- function(...) {
  list.files(...)
  play_music("spotify:track:5qrNvWGqU4HToSj1B3x5bM")
}
