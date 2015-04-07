makeDirs <- function(projectname, codelocation="coding"){
  # establish datadir, rdir, resultsdir, libdir, then return w/o output
  # usage: establishPaths(projectname, codelocation) 
  originaldir <- getwd()
  on.exit(setwd(originaldir))
  
  username <- strsplit(getwd(), split='/')[[1]][3]
  baselocation  <-  paste0('/Users/',username,'/Documents')
  
  projectdir <- paste0(baselocation,"/",codelocation,"/",projectname)
  try(setwd(projectdir), silent=TRUE)
  if(getwd()!=projectdir){
    dir.create(projectdir)
    setwd(projectdir)
    cat(paste0("Created ",projectname," dir.\n"))
  }
  exist_already <- dir(projectdir)
  if(! "datadir" %in% exist_already){
    dir.create("datadir")
    cat("Created datadir.\n")
  }
  if(! "rdir" %in% exist_already){
    dir.create("rdir")
    cat("Created rdir.\n")
  }
  if(! "resultsdir" %in% exist_already){
    dir.create("resultsdir")
    cat("Created resultsdir.\n")    
  }
}
