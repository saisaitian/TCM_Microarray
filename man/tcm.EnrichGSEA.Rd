% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enrich.R
\name{tcm.EnrichGSEA}
\alias{tcm.EnrichGSEA}
\title{Run GSEA}
\usage{
tcm.EnrichGSEA(
  data = NULL,
  res.path = tempdir(),
  dirct = "up",
  n.path = 6,
  msigdb.path = NULL,
  nPerm = 1000,
  minGSSize = 10,
  maxGSSize = 500,
  p.cutoff = 0.05,
  p.adj.cutoff = NULL
)
}
\arguments{
\item{data}{a deg data.frame}

\item{res.path}{A string value to indicate the path for saving the results for functional pathways.}

\item{dirct}{A string value to indicate the direction of identifying significant pathway. Allowed values contain c('up', 'down'); \code{up} means up-regulated pathway, and \code{down} means down-regulated pathway; "up" by default.}

\item{n.path}{A integer value to indicate how many top pathways sorted by NES should be identified; 6 by default.}

\item{msigdb.path}{A string value to indicate ABSOULUTE PATH/NAME of MSigDB file (GMT file with gene symbols) downloaded from \url{https://www.gsea-msigdb.org/gsea/msigdb/collections.jsp#H}.}

\item{nPerm}{A integer value to indicate the number of permutations; 1000 by default and 10000 will be better for reproducibility.}

\item{minGSSize}{A integer value to indicate minimal size of each geneSet for analyzing; 10 by default}

\item{maxGSSize}{A integer value to indicate maximal size of each geneSet for analyzing; 500 by default.}

\item{p.cutoff}{A numeric value to indicate the nominal p value for identifying significant pathways; pvalue < 0.05 by default.}

\item{p.adj.cutoff}{A numeric value to indicate the adjusted p value for identifying significant pathways; padj < 0.05 by default.}
}
\value{
A plot.
}
\description{
Run GSEA
}
\examples{
one_report <- tcm.LoadAnalyzedDEG(2)
msigdb.path <- system.file("extdata", "c2.cp.kegg.v6.2.symbols.gmt",
  package = "TCMR", mustWork = TRUE
)
p <- tcm.EnrichGSEA(
  data = one_report,
  dirct = "up",
  msigdb.path = msigdb.path,
  n.path = 6,
  p.cutoff = 0.05
)
}
