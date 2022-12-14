% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/array.R
\name{concat_arrays}
\alias{concat_arrays}
\alias{c.Array}
\title{Concatenate zero or more Arrays}
\usage{
concat_arrays(..., type = NULL)

\method{c}{Array}(...)
}
\arguments{
\item{...}{zero or more \link{Array} objects to concatenate}

\item{type}{An optional \code{type} describing the desired
type for the final Array.}
}
\value{
A single \link{Array}
}
\description{
Concatenates zero or more \link{Array} objects into a single
array. This operation will make a copy of its input; if you need
the behavior of a single Array but don't need a
single object, use \link{ChunkedArray}.
}
\examples{
concat_arrays(Array$create(1:3), Array$create(4:5))
}
