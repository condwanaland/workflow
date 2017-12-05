#' make_filename
#'
#' Note, make_filename is a useless function in isolation. The usefullness of it comes with being combined with assign_directories and start_project. I recommend reading the vignette to get started.
#'
#' @author Alistair Dunn, Conor Neilson
#'
#' @param file Name of the file you wish to read/write
#' @param path A element of the DIR list (i.e., DIR$Data)
#' @param add.terminal Logical, defaults to F. Should never be changed
#'
#' @return A complete filename that can be passed with DIR$xxx
#' @export
#'
#' @examples
#' \dontrun{
#' data(iris)
#' write.csv(iris, make_filename("myiris.csv"), DIR$Data)
#' }
make_filename <- function(file="", path="", add.terminal = F) {
  if(path != "") {
    plc <- substring(path, nchar(path))
    if(!(plc == "\\" | plc == "/")) path <- paste(path, "/", sep = "")
  }
  filename <- paste(path, file, sep = "")
  if(add.terminal == T) {
    plc <- substring(filename, nchar(filename))
    if(!(plc == "\\" | plc == "/")) filename <- paste(filename, "/", sep = "")
  }
  return(filename)
}
