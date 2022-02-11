## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)


## ----ShortRead, echo=TRUE, eval=FALSE--------------------------------------------------
## library(ShortRead)
## setwd("../data/")
## fqQC <-qa("wt_1-short.fq")


## ----fqQC, echo=TRUE, eval=FALSE-------------------------------------------------------
## fqQC


## ----report, echo=TRUE, eval=FALSE-----------------------------------------------------
## report(fqQC, type="html", dest="fastqQAreport-wt-short")


## ----readCount, echo=TRUE, eval=FALSE--------------------------------------------------
## ShortRead:::.plotReadCount(fqQC)


## ----plot2, echo=TRUE, eval=FALSE------------------------------------------------------
## ShortRead:::.plotNucleotideCount(fqQC)


## ----plot3, echo=TRUE, eval=FALSE------------------------------------------------------
## df <- fqQC[["readQualityScore"]]
## ShortRead:::.plotReadQuality(df[df$type=="read",])


## ----plot4, echo=TRUE, eval=FALSE------------------------------------------------------
## df <- fqQC[["sequenceDistribution"]]
## ShortRead:::.plotReadOccurrences(df[df$type=="read",], cex=.5)


## ----plot5, echo=TRUE, eval=FALSE------------------------------------------------------
## ShortRead:::.freqSequences(fqQC, "read", n=1000)
## #las primeras 1000 secuencias más representadas
## plot(ShortRead:::.freqSequences(fqQC, "read", n=1000)$count)


## ----plot6, echo=TRUE, eval=FALSE------------------------------------------------------
## perCycle <- fqQC[["perCycle"]]
## ShortRead:::.plotCycleBaseCall(perCycle$baseCall)
## ShortRead:::.plotCycleQuality(perCycle$quality)

