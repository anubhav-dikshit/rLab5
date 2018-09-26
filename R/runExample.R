#' Title Example for shiny app
#'
#' @export
#' @importFrom shiny runApp
#'
runExample <- function() {
  AppDir <- system.file("examples", "app.R", package = "rLab5")
  if (AppDir == "") {
    stop("Could not find example directory. Try re-installing `rLab5`.", call. = FALSE)
  }

  shiny::runApp(AppDir, display.mode = "normal")
}
