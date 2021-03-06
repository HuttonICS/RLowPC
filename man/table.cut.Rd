% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table.cut.R
\name{table.cut}
\alias{table.cut}
\title{Cut the confusion table at threshods}
\usage{
table.cut(input.table, cutoff = 1000, cutat = "top")
}
\arguments{
\item{input.table}{the confusion table output from \link{table.evalution}.}

\item{cutoff}{a numeric value of threshold for "top", "fpr" or "tpr".}

\item{cutat}{the options are "top", "fpr" and "tpr", which indicate to cut the confusion table at top weighted edges, FPR or TPR.}
}
\value{
\code{table.cut} returns a list of results cantains the table after applying cutoff, the pAUROC value, pAUPR value, precesion for the remained edges, the corresponding top, fpr, tpr cutoffs
and the statistical measures after applying function \link{confusion}.
}
\description{
The confusion table output from \code{\link{table.evaluate}} is cut at a threshold of top weighted edges, FPR or TPR. The \code{cutoff} in the function must match
to the \code{cutat} metrices.
}

