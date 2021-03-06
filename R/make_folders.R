#' make_folders
#'
#' Creates the folder structure needed for other functions to run
#'
#' @return A set of folders in your root directory
#' @keywords internal
#' @noRd
#'
#' @examples
#' \dontrun{
#' make_folders()
#' }
make_folders <- function() {
  dir.create("R")
  dir.create("Data")
  dir.create("Figures")
  dir.create("Report")
  dir.create(file.path("R/Functions"), recursive = FALSE)
  dir.create(file.path("R/Scripts"), recursive = FALSE)
}
