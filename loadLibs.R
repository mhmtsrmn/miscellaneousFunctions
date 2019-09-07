loadLibs <- function(text){
  
  # This function loads R libraries listed in (long) text files such as .Rmd .R
  # and returns a list of package calls in the text file and all attached packages
  # in the current session. 
  
  x <- readLines(text)
  
  l <- x[grep("library\\(", x)]
  
  libs <- unique(l[!grepl("=", l)])
  
  list(`packages calls` = libs,
       `currently attached packages` = eval(parse(text = libs)))
}
