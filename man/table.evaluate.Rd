% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table.evaluate.R
\name{table.evaluate}
\alias{table.evaluate}
\title{Evaluation of inferred gene networks}
\usage{
table.evaluate(inf.adj, ref.adj, directed = F)
}
\arguments{
\item{inf.adj}{the inferred network matrix. Column names and row names match to the reference network.}

\item{ref.adj}{the reference network matrix with 1 inidating connected edge and 0 unconnected edge.}

\item{directed}{logical, to compare as directed or undirected networks. In a undirected network, only the upper triangular of the network matrix is used for evaluation.}
}
\description{
The inferred network is evaluated by comparing to the reference network. The output is a tables of TP, FP, TN and FP with different edge weight cut-offs [1].
}
\examples{
##load library
library(RLowPC)
##load data
data(gnwdata)
data.exp<-gnwdata$size100$ts1[,-c(1:3)]
genes<-colnames(data.exp)
ref.edge<-gnwdata$size100$net1
ref.edge[,3]<-1
ref.adj<-edgelist2adjmatrix(ref.edge,genes)
inf.cor<-abs(cor(data.exp))
diag(inf.cor)<-0
table.cor<-table.evaluate(inf.adj = inf.cor,ref.adj = ref.adj)
head(table.cor)
}
\references{
[1] Meyer PE, Lafitte F, Bontempi G: minet: A R/Bioconductor package for inferring large transcriptional networks using mutual information.
BMC Bioinformatics 2008, 9:461.
}

