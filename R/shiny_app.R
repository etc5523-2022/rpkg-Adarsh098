
#' @title Shiny Application
#' @description This functions runs the shiny application created for the rbirds.pkg package.
#' @export
run_shiny_app <- function() {
  app_dir <- system.file("shiny_adarsh098", package = "rbirds.pkg")
  shiny::runApp(app_dir, display.mode = "normal")
}
