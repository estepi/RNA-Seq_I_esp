
library(ShortRead)
getwd()
setwd("~/Documents/BioApps/data/")

fqQC
countFastq("R1.fq.gz")
fq <- readFastq("R1.fq.gz")

fqQC <-qa("R1.fq.gz")
report(fqQC, type="html", dest="fastqQAreport-wt-short1")
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

