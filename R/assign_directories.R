#' Title
#'
#' @param base The root directory of your project
#'
#' @return
#' @export
#'
#' @examples
assign_directories<-function(base="") {
  DIR<-list()
  # base directory
  DIR[["Base"]]<-base
  # R directory
  DIR[["R"]]<-make_filename("R",DIR[["Base"]],T)
  # R functions
  DIR[["Functions"]]<-make_filename("Functions",DIR[["R"]],T)
  # Scripts
  DIR[["Scripts"]]<-make_filename("Scripts", DIR[["R"]],T)
  # Raw Data
  DIR[["Data"]]<-make_filename("Data",DIR[["Base"]],T)
  # Figures
  DIR[["Figures"]]<-make_filename("Figures",DIR[["Base"]],T)

  return(DIR)
}
