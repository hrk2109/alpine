% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper.R
\name{getReadLength}
\alias{getReadLength}
\title{Get read length}
\usage{
getReadLength(bam.files)
}
\arguments{
\item{bam.files}{a character vector pointing to BAM files}
}
\value{
a numeric vector, one number per BAM file, the
length of the first read in the file
}
\description{
Gets the length of the first read in a BAM file
}
\examples{

# these next lines just write out a BAM file from R
# typically you would already have a BAM file
library(alpineData)
library(GenomicAlignments)
library(rtracklayer)
gap <- ERR188088()
dir <- system.file(package="alpineData", "extdata")
bam.file <- c("ERR188088" = file.path(dir,"ERR188088.bam"))
export(gap, con=bam.file)

getReadLength(bam.file)

}

