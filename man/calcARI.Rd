% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/liger.R
\name{calcARI}
\alias{calcARI}
\title{Calculate adjusted Rand index}
\usage{
calcARI(object, clusters.compare)
}
\arguments{
\item{object}{\code{liger} object. Should run quantileAlignSNF before calling.}

\item{clusters.compare}{Clustering with which to compare (named vector).}
}
\value{
Value of ARI

Adjusted Rand index value.
}
\description{
Computes adjusted Rand index for \code{liger} clustering and external clustering.
The Rand index ranges from 0 to 1, with 0 indicating no agreement between clusterings and 1
indicating perfect agreement.
}
\examples{
\dontrun{
# liger object, factorization done
ligerex
ligerex <- quantileAlignSNF(ligerex)
# toy clusters
cluster1 <- sample(c('type1', 'type2', 'type3'), ncol(ligerex@raw.data[[1]]), replace = T)
names(cluster1) <- colnames(ligerex@raw.data[[1]])
cluster2 <- sample(c('type4', 'type5', 'type6'), ncol(ligerex@raw.data[[2]]), replace = T)
names(cluster2) <- colnames(ligerex@raw.data[[2]])
# get ARI for first clustering
ari1 <- calcARI(ligerex, cluster1)
# get ARI for second clustering
ari2 <- calcARI(ligerex, cluster2)
}
}
