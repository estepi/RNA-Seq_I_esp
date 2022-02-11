## ----setup, include=FALSE--------------------------------------------------------------
knitr::opts_chunk$set(echo = FALSE)


## ----counts, echo=TRUE, eval=FALSE-----------------------------------------------------
## library(RNAseqData.HNRNPC.bam.chr14)
## library(GenomicRanges)
## library(GenomicFeatures)
## library(GenomicAlignments)
## bamfiles <- RNAseqData.HNRNPC.bam.chr14_BAMFILES
## targets <-
##     data.frame(
##         row.names = names(RNAseqData.HNRNPC.bam.chr14_BAMFILES),
##         bam = matrix(
##             unlist(RNAseqData.HNRNPC.bam.chr14_BAMFILES),
##             ncol = 1,
##             byrow = TRUE
##         ),
##         condition = c(rep("CT", 4), rep("KD", 4))
##     )
## files = as.character(targets$bam)
## reads <- lapply(files,
##                 function(x) {
##                     aln <- readGAlignments(x)
##                 })
## names(reads) <- rownames(targets)
## c14 <- loadDb("chr14.sqlite")
## feature <- exonsBy(c14, by = "gen")
## hits <-
##     lapply(reads, function(x) {
##         countOverlaps(feature, x, ignore.strand = TRUE)
##     })
## hits.ul <- do.call(cbind.data.frame, hits)
## write.table(file = "genes.hits.txt", hits.ul)
## 


## ----targets, echo=TRUE, eval=FALSE----------------------------------------------------
## targets <- read.table("targets.txt", header = T, row.names = 1)


## ----readt, echo=TRUE, eval=FALSE------------------------------------------------------
## counts <-
##     read.table(
##         "gene.hits.txt",
##         row.names = 1,
##         header = T,
##         stringsAsFactors = F
##     )


## ----descriptive, echo=TRUE, eval=FALSE------------------------------------------------
## class(counts)
## dim(counts)
## head(counts)


## ----edgeR, echo=TRUE, eval=FALSE------------------------------------------------------
## library(edgeR)


## ----summary, echo=TRUE, eval=FALSE----------------------------------------------------
## summary(counts)
## plot(density(rowMeans(counts)))


## ----boxplots, echo=TRUE, eval=FALSE---------------------------------------------------
## par(mfrow=c(2,4))
## apply(counts, 2, boxplot)


## ----filtros, echo=TRUE, eval=FALSE----------------------------------------------------
## cpms<-cpm(counts)


## ----keep, echo=TRUE, eval=FALSE-------------------------------------------------------
## keep<-rowSums(cpms>1)>4


## ----keep2, echo=TRUE, eval=FALSE------------------------------------------------------
## dim(counts)
## countsf<-counts[keep,]
## dim(countsf)


## ----keep3, echo=TRUE, eval=FALSE------------------------------------------------------
## summary(countsf)


## ----DGEList1, echo=TRUE, eval=FALSE---------------------------------------------------
## d<-DGEList(counts=countsf, group=targets$condition)


## ----calcNormF, echo=TRUE, eval=FALSE--------------------------------------------------
## d<-calcNormFactors(d)


## ----names, echo=TRUE, eval=FALSE------------------------------------------------------
## shortNames<-paste(targets$condition, rep(1:4, 2), sep=".")
## targets<-cbind(targets,shortNames)
## plotMDS(d, labels=targets$shortNames,
## col=c("darkgreen","blue")[factor(targets$condition)])


## ----names2, echo=TRUE, eval=FALSE-----------------------------------------------------
## d<-estimateCommonDisp(d, verbose=TRUE)


## ----disp, echo=TRUE, eval=FALSE-------------------------------------------------------
## d<-estimateTagwiseDisp(d)


## ----plotBCV, echo=TRUE, eval=FALSE----------------------------------------------------
## plotBCV(d)


## ----exactTest, echo=TRUE, eval=FALSE--------------------------------------------------
## de<-exactTest(d, pair=c("CT","KD"))


## ----toptags, echo=TRUE, eval=FALSE----------------------------------------------------
## tt <- topTags(de, n=nrow(d))


## ----toptags2, echo=TRUE, eval=FALSE---------------------------------------------------
## table(tt$table$FDR <0.05)
## hist(tt$table$FDR, breaks=100 )


## ----deg, echo=TRUE, eval=FALSE--------------------------------------------------------
## deg<-rownames(tt)[tt$table$FDR <.1]
## plotSmear(d, de.tags=deg)
## abline(h=c(-1,0,1))


## ----tt2, echo=TRUE, eval=FALSE--------------------------------------------------------
## write.table() o write.csv():
## write.csv(tt$table, file="toptags_edgeR.csv")

