\name{predict.cocktailEnsemble}
\alias{predict.cocktailEnsemble}
\title{Predict method for cocktailEnsemble objects.
}
\description{
Prediction of new data using \code{cocktailEnsemble}. \code{predict} combines the predictions from all models contained in the cocktail by taking the mean of the probabilities.
}
\usage{
\method{predict}{cocktailEnsemble}(object, newdata=NULL,...)
}
\arguments{
  \item{object}{An object of class \code{cocktailEnsemble}, as created by the function \code{cocktailEnsemble}.
}
  \item{newdata}{A data frame with the same predictors as in the training data.}
  \item{...}{Not used currently.}
}

\value{
A vector containing the probabilities of the predicted event.
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
#Credit Approval data available at UCI Machine Learning Repository
data(Credit)

#Create training set (take a small subset for demonstration purposes)
Credit <- data.frame(Credit[order(runif(nrow(Credit ))),])[1:100,c('V2','V3','V8','V11','V14','V15','Response')]
trainingset <- Credit[1:1:floor(0.50*nrow(Credit)),]
#Create test set
testset <- Credit[(floor(0.50*nrow(Credit))+1 ):nrow(Credit),]


#Train Cocktail Ensemble on training data
cE <- cocktailEnsemble(x=trainingset[,names(trainingset)!= "Response"],y=trainingset$Response)

#Deploy Kernel Factory to predict response for test data
pred <- predict(cE,testset[,names(testset)!= "Response"])

}
\keyword{classification}
