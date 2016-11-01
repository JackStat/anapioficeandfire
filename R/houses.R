#' @title houses
#'
#' @importFrom httr GET
#' @importFrom jsonlite fromJSON
#' @export

houses <- function(houseNum = NULL, name = NULL, page = NULL, pageSize = NULL){

  if(all(is.null(houseNum) & is.null(name) & is.null(page) & is.null(pageSize))){
    url <- 'http://www.anapioficeandfire.com/api/houses'
  }

  Cont <- GET(url)

  fromJSON(httr::content(Cont, 'text'))

}

