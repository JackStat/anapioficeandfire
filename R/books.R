#' @title books
#'
#' @importFrom httr GET
#' @importFrom jsonlite fromJSON
#' @export

books <- function(bookNum = NULL, name = NULL, fromReleaseDate = NULL, toReleaseDate = NULL, page = NULL, pageSize = NULL){

  if(all(is.null(bookNum) & is.null(name) & is.null(fromReleaseDate) & is.null(toReleaseDate) & is.null(page) & is.null(pageSize))){
    url <- 'http://www.anapioficeandfire.com/api/books'
  }

  Cont <- GET(url)

  fromJSON(httr::content(Cont, 'text'))

}
