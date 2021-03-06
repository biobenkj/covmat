% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RobustCoux.R
\name{smoothing.matrix}
\alias{smoothing.matrix}
\title{Optimal Smoothing Matrix}
\usage{
smoothing.matrix(
  R,
  startup_period = 10,
  training_period = 60,
  seed = 9999,
  trials = 50,
  method = "L-BFGS-B",
  lambda = 0.2
)
}
\arguments{
\item{R}{data}

\item{startup_period}{length of samples required to calculate initial values}

\item{training_period}{length of samples required to calculate forecast errors
for evalualating the objective}

\item{seed}{random seed to replicate the starting values for optimization}

\item{trials}{number of strarting values to try for any optimization. 
Large number of trials for high dimensions can be time consuming}

\item{method}{optimization method to use to evaluate an estimate of 
smoothing matrix. Default is L-BFGS-B}

\item{lambda}{known constant as described in the paper. Defaulted to 0.2}
}
\description{
Optimal Smoothing Matrix
}
\details{
Calcuation of smoothing matrix is done by assuming that the smoothing matrix
is symmetrix and has a spectral decomposition. The orthogonal matrix in the 
decomposition is calculated using the product of givens rotation matrices and
requires d(d-1)/2 angles for a d dimensional matrix. The eigenvalues are 
restricted to lie in [0,1].
}
\author{
Rohit Arora
}
