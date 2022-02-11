## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)

library(ShortRead)

setwd("../data/")
fqQC <-qa("R1.fastq")
fqQC
report(fqQC, type="html", dest="fastqQAreport-wt-short")
ShortRead:::.plotReadCount(fqQC)
ShortRead:::.plotNucleotideCount(fqQC)
df <- fqQC[["readQualityScore"]]
ShortRead:::.plotReadQuality(df[df$type=="read",])
df <- fqQC[["sequenceDistribution"]]
ShortRead:::.plotReadOccurrences(df[df$type=="read",], cex=.5)
ShortRead:::.freqSequences(fqQC, "read", n=1000)
plot(ShortRead:::.freqSequences(fqQC, "read", n=1000)$count)
perCycle <- fqQC[["perCycle"]]
ShortRead:::.plotCycleBaseCall(perCycle$baseCall)
ShortRead:::.plotCycleQuality(perCycle$quality)

