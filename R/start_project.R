#' start_project
#'
#' Main function to create your folders and set up your directories. This should be the first function run after you have started a new Rstudio project (if using Rstudio), or after setting your working directory (if not using Rstudio)
#'
#' @return DIR, a list of directories that can be called by make_filename (see make_filename to learn how to save and access objects in these directories)
#' @export
#'
#' @examples
#' \dontrun{
#' start_project()
#' }
start_project <- function() {
  make_folders()
  utils::file.edit("templates/00-init.R")
}
