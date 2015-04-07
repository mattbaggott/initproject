\name{makeDirs}
\alias{makeDirs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
makeDirs
}
\description{
Creates a project folder in a standard location, then creates standard subfolders (datadir, rdir, resultsdir) inside
}
\usage{
makeDirs(projectname, codelocation = "coding")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{projectname}{ 
the name of the new project, will also be the directory in codelocation that contains the current project
}
  \item{codelocation}{
the name of the directory in ~/Documents/ that contains all project directories
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Matthew Baggott
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
makeDirs(projectname="fall_sales_analysis", codelocation = "coding") 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
