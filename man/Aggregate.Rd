\name{Aggregate}
\alias{Aggregate}
\title{
Aggregate numeric and categorical variables by an ID
}
\description{
The \code{Aggregate} function (not to be confounded with \code{aggregate}) prepares a data frame for merging by computing the sum, mean and variance of all continuous (integer and numeric) variables by a given ID variable.
It also creates dummies for all categorical variables (character and factor) and subsequently computes the sum by a given ID variable. This functions aims at maximal information extraction with a minimal amount of code.
}
\usage{
Aggregate(x, by)
}

\arguments{
  \item{x}{A data frame without the ID. Categorical variables have to be of type character or factor and continuous variables have to be of type integer or numeric.
}
  \item{by}{A vector containing ID''s.
}
}

\value{
A data frame with the aforementioned variables aggregated by the given ID variables.
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
#Create some data
data <- data.frame(V1=as.factor(c('yes','no','no','yes','yes','yes','yes')),
                    V2=as.character(c(1,2,3,4,4,4,4)),V3=c(1:7),V4=as.numeric(c(7:1)))
ID=as.character(c(1,1,1,1,2,2,2))
#Demonstrate function
Aggregate(x=data,by=ID)
}
\keyword{Data Manipulation}
