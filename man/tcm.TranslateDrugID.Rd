% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/id-translation.R
\name{tcm.TranslateDrugID}
\alias{tcm.TranslateDrugID}
\title{Translate drug ID}
\usage{
tcm.TranslateDrugID(query, from, to)
}
\arguments{
\item{query}{the identifer of compounds in other database}

\item{from}{the first ID}

\item{to}{the second ID}
}
\value{
a data.frame
}
\description{
Translate drug ID
}
\details{
Interface to CTS (http://cts.fiehnlab.ucdavis.edu/) for metabolite identifier translation between >200
of the most common biological databases including: Chemical Name, InChIKey, PubChem CID,
ChemSpider, BioCyc, ChEBI, CAS, HMDB, KEGG and LipidMAPS.
}
\examples{
query <- c("C15973", "C00026")
from <- "KEGG"
to <- "PubChem CID"
tcm.TranslateDrugID(query, from, to)
}
