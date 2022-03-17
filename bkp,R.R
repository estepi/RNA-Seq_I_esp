setwd("~/Documents/BioApps/data/")
targets <- read.table("targets.txt", header = T, row.names = 1)
counts <-
  read.table(
    "genes.hits.txt",
    row.names = 1,
    header = T,
    stringsAsFactors = F
  )

coldata <- data.frame(sample=rownames(targets),condition=targets$condition)
coldata$condition <- factor(coldata$condition)
coldata$type <- rep("SE")
condition <- factor(targets$condition)
coldata
library(DESeq2)
dds <- DESeqDataSetFromMatrix(countData = counts,
                              design   = ~condition,
                              colData = coldata)
dds <- DESeq(dds)
resultsNames(dds) # lists the coefficients
res <- results(dds)
res
resultsNames(dds)
resOrdered <- res[order(res$pvalue),]
summary(res)
sum(res$padj < 0.1, na.rm=TRUE)
res05 <- results(dds, alpha=0.05)
summary(res05)
resultsNames(dds)

as.data.frame(y)
y <-as.data.frame(res)
resOrdered <- data.frame(res[order(abs(res$log2FoldChange), decreasing = T),][1:10,])

y$gene_color <- rep("grey", nrow(y))
y$gene_color[y$log2FoldChange>1] <-"red"
y$gene_color[y$log2FoldChange< (-1)]<-"green"
y$imp_genes<-NA
ii <- match(rownames(tt10), rownames(y))
y$imp_genes[ii]<-rownames(y)[ii]
ggplot(y, aes(x=log2FoldChange,
              y=-log10(padj))) +
  geom_point(aes(col=gene_color), cex= 1.2) +
  scale_color_manual(values=c("dark green","dark grey", "dark red")) +
  labs(title="DEG", x="log2(FC)", y="-log10(FDR)") +
  geom_vline(xintercept= c(-1, 1), colour= 'black', linetype= 'dashed') +
  geom_hline(yintercept= 1.30103, colour= 'black', linetype= 'dashed') +
  theme_minimal()+
  theme(legend.position = "none",
        plot.title = element_text(size = 12, face="italic", hjust=0.4),
        axis.title.x = element_text(color = "black", size=12, hjust = 0.4),
        axis.title.y = element_text(size =12, hjust = 0.5)) +
  geom_text_repel(data=y,
                  aes(x=log2FoldChange, y=-log10(padj)),
                  label =y$imp_genes,
                  box.padding = unit(0.25, "lines"),
                  hjust =1,
                  max.overlaps = 50)



setwd("~/Documents/BioApps/data/")
dir()
targets <- read.table("targets.txt", header = T, row.names = 1)
targets
counts <-  read.table( "genes.hits.txt",   
                       row.names = 1, header = T, stringsAsFactors = F)
