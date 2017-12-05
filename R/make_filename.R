#' make_filename
#'
#' @author Alistair Dunn, Conor Neilson
#'
#' @param file Name of the file you wish to read/write
#' @param path A element of the DIR list (i.e., DIR$Data)
#' @param add.terminal Logical, defaults to F. Should never be changed
#'
#' @return
#' @export
#'
#' @examples
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
