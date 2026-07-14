#' @title Bruno sparse
#'
#' @description
#' Make your data Bruno sparse.
#'
#' @param .data The dataframe of a vector to subsample from.
#'
#' @param ... Additional arguments passed to \code{\link[dplyr]{slice_sample}()} or \code{\link[base]{sample}()}.
#'
#' @param play Logical, whether to play the track on Spotify.
#'
#' @export
bruno_sparse <- function(.data, ..., play = FALSE) {
  message(
    "
    #####################################
    'Cause uptown funk gon' give it to you
    #####################################
    "
  )

  if (play) {
    play_music("spotify:track:32OlwWuMpZ6b0aN2RZOeMS")
  }

  if (is.data.frame(.data)) {
    slice_sample(.data, ...)
  } else {
    sample(.data, ...)
  }
}
