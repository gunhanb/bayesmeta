\name{bayesmeta-package}
\alias{bayesmeta-package}
\docType{package}
\title{
  Bayesian Random-Effects Meta-Analysis
}
\description{
  Description: A collection of functions allowing to derive the
  posterior distribution of the two parameters in a random-effects
  meta-analysis, and providing functionality to evaluate joint and
  marginal posterior probability distributions, predictive
  distributions, shrinkage effects, posterior predictive p-values,
  etc.
}
\details{
  \tabular{ll}{
    Package: \tab bayesmeta\cr
    Type:    \tab Package\cr
    Version: \tab 2.6\cr
    Date:    \tab 2020-12-14\cr
    License: \tab GPL (>=2)
  }
  The main functionality is provided by the \code{\link{bayesmeta}()}
  function. It takes the data (estimates and associated standard
  errors) and prior information (effect and heterogeneity priors), and
  returns an object containing functions that allow to derive posterior
  quantities like joint or marginal densities, quantiles, etc.
}
\author{
Christian Roever <christian.roever@med.uni-goettingen.de>
}
\seealso{
  \code{\link{forestplot.bayesmeta}}, \code{\link{plot.bayesmeta}}.
}
\references{
  C. Roever.
  \href{https://www.doi.org/10.18637/jss.v093.i06}{Bayesian random-effects meta-analysis using the bayesmeta R package}.
  \emph{Journal of Statistical Software}, \bold{93}(6):1-51, 2020.
%  
%  C. Roever.
%  \emph{The bayesmeta app}.
%  \url{https://ams.med.uni-goettingen.de:3838/bayesmeta/app},
%  2018.
}
\keyword{ models }
\keyword{ package }
\examples{
# example data by Snedecor and Cochran:
data("SnedecorCochran")

\dontrun{
# analysis using improper uniform prior
# (may take a few seconds to compute!):
bma <- bayesmeta(y=SnedecorCochran[,"mean"],
                 sigma=sqrt(SnedecorCochran[,"var"]),
                 label=SnedecorCochran[,"no"])

# show some summary statistics:
bma

# show a bit more details:
summary(bma)

# show a forest plot:
forestplot(bma)

# show some more plots:
plot(bma)
}
}
