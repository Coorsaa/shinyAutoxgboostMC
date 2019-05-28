#' @title Run shinyAutoxgboostMC
#'
#' @description
#' Run a local instance of shinyAutoxgboostMC
#'
#' @param ... [\code{any}]\cr
#'   Additional arguments passed to shiny's
#'   \code{runApp()} function.
#' @examples
#' \dontrun{
#'   shinyAutoxgboostMC()
#' }
#' @import shiny
#' @import shinythemes
#' @export
shinyAutoxgboostMC = function(...) {
  appDir = system.file("shinyAutoxgboostMC", package = "shinyAutoxgboostMC")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `shinyAutoxgboostMC`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
