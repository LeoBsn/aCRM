\name{imputeMissings}
\alias{imputeMissings}
\title{
Impute missing values with the median or mode.
}
\description{
Character vectors and factors are imputed with the mode. Numeric and integer vectors are imputed with the median.
}
\usage{
imputeMissings(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
A data frame.
}
}

\value{
A data frame.
}
\references{
Van den Poel, D., Ballings, M., Volkov, A., D''haen, J., Van Herwegen, M., Predictive Analytics for analytical Customer Relationship Management using SAS, Oracle and R, Springer, Forthcoming.
}
\author{
Dirk Van den Poel, Michel Ballings,  Andrey Volkov, Jeroen D''haen, Michiel Van Herwegen

Maintainer: Michel Ballings  <Michel.Ballings@GMail.com>
}

\seealso{
 Other functions in this package:
 \code{\link{imputeMissings}}, \code{\link{Aggregate}}, \code{\link{cocktailEnsemble}}, \code{\link{predict.cocktailEnsemble}}
}
\examples{
#create some data
data <- data.frame(V1=as.factor(c('yes','no','no',NA,'yes','yes','yes')),
                   V2=as.character(c(1,2,3,4,4,4,NA)),
                   V3=c(1:6,NA),V4=as.numeric(c(1:6,NA)))
#demonstrate function
imputeMissings(data)
}
\keyword{Data Manipulation}
