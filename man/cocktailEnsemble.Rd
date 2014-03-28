\name{cocktailEnsemble}
\alias{cocktailEnsemble}
\title{
Cocktail Ensemble: build a model consisting of multiple classifiers.
}
\description{
\code{cocktailEnsemble} is a classification algorithm. It builds four models by calling \code{glm} (logit), \code{kernelFactory}, \code{randomForest}, and \code{ada}.
}
\usage{
cocktailEnsemble(x, y)
}

\arguments{
  \item{x}{A data frame containing the predictors.}
  \item{y}{The response vector.}
}

\value{
An object of type cocktailEnsemble containing the four aforementioned models.
}
\references{
Van den Poel, D., Ballings, M., Volkov, A., D''haen, J., Vanherwegen, M., Predictive Analytics for analytical Customer Relationship Management using SAS, Oracle and R, Springer, Forthcoming.

glm: 
\itemize{
        \item Dobson, A. J. (1990) An Introduction to Generalized Linear Models. London: Chapman and Hall.
	\item Hastie, T. J., & Pregibon, D. (1992) Generalized linear models. Chapter 6 of Statistical Models in S eds J. M. Chambers and T. J. Hastie, Wadsworth & Brooks/Cole.
	\item McCullagh P., & Nelder, J. A. (1989) Generalized Linear Models. London: Chapman and Hall.
	\item Venables, W. N., & Ripley, B. D. (2002) Modern Applied Statistics with S. New York: Springer.
}

randomForest:
\itemize{
         \item Liaw, A. & Wiener, M. (2002). Classification and Regression by randomForest. R News 2(3), 18--22.
	\item Breiman, L. (2001), Random Forests, Machine Learning 45(1), 5-32.
}

kernelFactory:
\itemize{
         \item Ballings, M., & Van den Poel, D. (2012). Kernel Factory: An ensemble of Kernel Machines. Expert Systems With Applications. Forthcoming.
	 \item Ballings, M., & Van den Poel, D. (2012). kernelFactory: An ensemble of kernel machines. R package version 0.1.1 http://cran.r-project.org/web/packages/kernelFactory.
}

ada:
\itemize{
         \item Culp, M., Johnson, K.,  & Michailidis,  G. (2012). ada: ada: an R package for stochastic boosting. R package version 2.0-3.  http://CRAN.R-project.org/package=ada
         \item Friedman, J. (1999). Greedy Function Approximation: A Gradient Boosting Machine. Technical Report, Department of Statistics, Standford University.
         \item Friedman, J., Hastie, T., and Tibshirani, R. (2000). Additive Logistic Regression: A statistical view of boosting. Annals of Statistics, 28(2), 337-374.
         \item Friedman, J. (2002). Stochastic Gradient Boosting. Coputational Statistics \& Data Analysis 38.
         \item Culp, M., Johnson, K., & Michailidis, G. (2006). ada: an R Package for Stochastic Boosting Journal of Statistical Software, 16.
}
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
#testset <- Credit[(floor(0.50*nrow(Credit))+1 ):nrow(Credit),]


#Train Cocktail Ensemble on training data
cE <- cocktailEnsemble(x=trainingset[,names(trainingset)!= "Response"],y=trainingset$Response)

#Deploy Kernel Factory to predict response for test data
#pred <- predict(cE,testset[,names(testset)!= "Response"])

}
\keyword{classification}

