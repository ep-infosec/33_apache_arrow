% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/field.R
\docType{class}
\name{Field}
\alias{Field}
\alias{field}
\title{Field class}
\usage{
field(name, type, metadata, nullable = TRUE)
}
\arguments{
\item{name}{field name}

\item{type}{logical type, instance of \link{DataType}}

\item{metadata}{currently ignored}

\item{nullable}{TRUE if field is nullable}
}
\description{
\code{field()} lets you create an \code{arrow::Field} that maps a
\link[=data-type]{DataType} to a column name. Fields are contained in
\link[=Schema]{Schemas}.
}
\section{Methods}{

\itemize{
\item \code{f$ToString()}: convert to a string
\item \code{f$Equals(other)}: test for equality. More naturally called as \code{f == other}
}
}

\examples{
field("x", int32())
}
