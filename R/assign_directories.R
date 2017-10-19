#' Title
#'
#' @param base
#'
#' @return
#' @export
#'
#' @examples
assign.directories<-function(base="") {
  DIR<-list()
  # base directory
  DIR[["Base"]]<-base
  # R directory
  DIR[["R"]]<-make.filename("R",DIR[["Base"]],T)
  # R functions
  DIR[["Functions"]]<-make.filename("Functions",DIR[["R"]],T)
  # Scripts
  DIR[["Scripts"]]<-make.filename("Scripts", DIR[["R"]],T)
  # Raw Data
  DIR[["Data"]]<-make.filename("Data",DIR[["Base"]],T)
  # Figures
  DIR[["Figures"]]<-make.filename("Figures",DIR[["Base"]],T)

  return(DIR)
}
