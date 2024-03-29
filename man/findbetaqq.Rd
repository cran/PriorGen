% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findBetaqq.r
\name{findbetaqq}
\alias{findbetaqq}
\title{The findbetaqq function}
\usage{
findbetaqq(percentile.value1, percentile1,
percentile.value2, percentile2, seed = 280385, nsims=10000)
}
\arguments{
\item{percentile.value1}{specify the value for the first percentile. It takes a value between 0 and 1.}

\item{percentile1}{specify which is the percentile that corresponds to percentile.value1. It takes a value between 0 and 1.}

\item{percentile.value2}{specify the value for the second percentile. It takes a value between 0 and 1.}

\item{percentile2}{specify which is the percentile that corresponds to percentile.value2. It takes a value between 0 and 1.}

\item{seed}{A fixed seed for replication purposes.}

\item{nsims}{Number of simulations for the creation of various summary metrics of the elicited prior.}
}
\value{
parameters: The beta distribution parameters Beta(a,b)

summary: A basic summary of the elicited prior

input: The initial input value that produced the above prior.
}
\description{
A function to estimate the parameters alpha and beta of a Beta
distribution based on the existing prior belief (data and/or
expert opinion) about the values of two distinct percentiles.
}
\examples{
## We believe that 20\% of the units in an area/region have a prevalence of
## disease/infection less than or equal to 0.30 while at the same time
## we are 90\% certain that the prevalence is less than 0.60

findbetaqq(
  percentile.value1 = 0.30, percentile1 = 0.20,
  percentile.value2 = 0.60, percentile2 = 0.90
)

}
\references{
Kostoulas, P., Nielsen, S. S., Branscum, A. J., Johnson, W. O., Dendukuri, N.,
Dhand, N. K., Toft, N., Gardner, I. A. (2017): Reporting guidelines for
diagnostic accuracy studies that use Bayesian latent class models (STARD–BLCM).
Statistics in medicine, 23, 3603–3604.
}
