strClean <- function(x){
  # Lower case:
  x <- tolower(x)  
  # Remove spaces and punctuation:
  x <- gsub(pattern="[ \\.-]",replacement="",x)
  
  # Remove diacritics:
    tmp <- iconv(x,  to ="ASCII//TRANSLIT")
    x <- gsub("[^[:alpha:],]", "", tmp)
  
  return(x)
}