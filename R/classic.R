#' @title Liszt your files
#'
#' @description
#' Liszt all files in a directory.
#'
#' @param ... Arguments passed to \code{\link[base]{list.files}()}.
#'
#' @export
liszt.files <- function(...) {
  play_music("spotify:track:5qrNvWGqU4HToSj1B3x5bM")
  list.files(...)
}
