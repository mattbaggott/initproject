establishPaths <- function(projectname, codelocation="coding"){
  # establish datadir, rdir, resultsdir, libdir, then return w/o output
  # usage: establishPaths(projectname, codelocation) 
  username <- strsplit(getwd(), split='/')[[1]][3]
  assign("baselocation", paste0('/Users/',username,'/Documents'), 
         envir = .GlobalEnv)
  assign("datadir",      paste0(baselocation,"/",codelocation,"/",projectname,"/data/"), 
         envir = .GlobalEnv)
  assign("rdir",         paste0(baselocation,"/",codelocation,"/",projectname,"/r/"), 
         envir = .GlobalEnv)
  assign("resultsdir",   paste0(baselocation,"/",codelocation,"/",projectname,"/results/"), 
         envir = .GlobalEnv)
  assign("libdir",       paste0(baselocation,"/",codelocation,"/","sales-lib/r/"), 
         envir = .GlobalEnv) 
  # returns silently
}
