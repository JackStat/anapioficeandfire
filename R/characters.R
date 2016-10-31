#' @title characters
#'
#' @importFrom httr GET
#' @importFrom jsonlite fromJSON
#' @export

characters <- function(characterNum = NULL, name = NULL, page = NULL, pageSize = NULL){

  if(all(is.null(characterNum) & is.null(name) & is.null(page) & is.null(pageSize))){
    url <- 'http://www.anapioficeandfire.com/api/characters'
  }

  Cont <- GET(url)

  fromJSON(httr::content(Cont, 'text'))

}
