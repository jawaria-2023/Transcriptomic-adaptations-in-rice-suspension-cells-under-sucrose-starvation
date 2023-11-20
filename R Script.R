Load the Required Libraries
Download and Prepare the Data
Normalize the Data
Design Matrix and Contrast
Fit the Model and Make Contrasts
Results and Table of Top Genes
###################################################
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("GEOquery")
BiocManager::install("limma")

library(GEOquery)
library(limma)

# Install if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(c("GEOquery", "limma"))

# Load libraries
library(GEOquery)
library(limma)

# Fetch data
gse <- getGEO("GSE5853", GSEMatrix =TRUE)
if (length(gse) > 1) idx <- grep("GPL", attr(gse, "names")) else idx <- 1
gse <- gse[[idx]]

# Prepare data
# Assumption: the first group in pData(gse) is control, the rest are treatments.
# This may need adjustment based on the actual study design
factors <- factor(c(rep("Control", ncol(gse)/2), rep("Treatment", ncol(gse)/2)))
design <- model.matrix(~ factors)
colnames(design) <- c("Intercept", "TreatmentEffect")
exprsData <- exprs(gse)

# Normalize data
normData <- normalizeBetweenArrays(exprsData, method = "quantile")

# Normalize data (example: using quantile normalization)
normData <- normalizeBetweenArrays(exprsData, method = "quantile")

# Differential expression analysis
fit <- lmFit(normData, design)
fit <- eBayes(fit)
results <- topTable(fit, coef="TreatmentEffect")

# View results
print(results)

# Boxplot before normalization
boxplot(exprs(gse), main="Boxplot before normalization", las=2, col="blue")

# Normalize data
normData <- normalizeBetweenArrays(exprs(gse), method = "quantile")

# Boxplot after normalization
boxplot(normData, main="Boxplot after normalization", las=2, col="red")

# Differential expression analysis (as previously described)

# MA plot
plotMA(fit, main="MA Plot")


