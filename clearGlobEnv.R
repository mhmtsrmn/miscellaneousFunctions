clearGlobEnv <- function(){
  
  # This function clears the global environment
  # equivalent of rm(list = ls())
  
  x <- ls(envir = .GlobalEnv)
  
  rm(list = x, envir = parent.env(environment()))
  
}
