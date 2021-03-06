% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_eigenvalue_info.R
\name{add_eigenvalue_info}
\alias{add_eigenvalue_info}
\title{Add eigenvalue information}
\usage{
add_eigenvalue_info(eigs, p, opts = list())
}
\arguments{
\item{eigs}{A vector of the eigenvalues to use in the rescaling.}

\item{p}{The plot to add eigenvalue information to}

\item{opts}{The list containing aesthetic and layers information. This is
needed to determine the x and y axis labels.}
}
\value{
p The plot with eigenvalue information added, and with the aspect
 ratio fixed by the ratio of eigenvalues.
}
\description{
Add eigenvalue labels and rescale axes according to proportion
 of variation explained
}

