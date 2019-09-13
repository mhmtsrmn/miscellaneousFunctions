loadLibs <- function(filename){
  
  # This function takes filename as a single argument and 
  # loads R libraries listed in (long) text files such 
  # as .Rmd, .R and returns a list of package calls (and 
  # executes them) in the text file and
  # all attached packages in the current session. 
  #
  # Example: loadLibs("longFile.R")
  
  # Read lines of the file
  lines <- readLines(filename)
  
  # Pick lines that have pattern "library("
  library_list <- lines[grep("library\\(", lines)]
  
  # Remove duplicate library lines and the ones with "=" sign, i.e. library(help = "packagname")
  libraries <- unique(lines[!grepl("=", library_list)])
  
  # List library calls and executed calls
  list(`packages calls` = libraries,
       `currently attached packages` = eval(parse(text = libs)))
}
