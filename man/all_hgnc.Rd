% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.r
\docType{data}
\name{all_hgnc}
\alias{all_hgnc}
\title{All HGNC gene symbols}
\format{An object of class \code{character} of length 36591.}
\source{
The code to prepare the .Rda file file from the marker file is:
\code{
library("biomaRt")
listMarts(host="www.ensembl.org")
human <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl")
hgnc_symbols = getBM(attributes=c("hgnc_symbol","ensembl_gene_id"), mart=human)
all_hgnc = unique(hgnc_symbols$hgnc_symbol)
save(all_hgnc,file="all_hgnc.Rda")
}
}
\usage{
all_hgnc
}
\description{
A dataset containing all HGNC symbols
}
\keyword{datasets}
