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
  if(! "data" %in% exist_already){
    dir.create("data")
    cat("Created data dir.\n")
  }
  if(! "r" %in% exist_already){
    dir.create("r")
    cat("Created r dir.\n")
  }
  if(! "results" %in% exist_already){
    dir.create("results")
    cat("Created results dir.\n")    
  }
}
