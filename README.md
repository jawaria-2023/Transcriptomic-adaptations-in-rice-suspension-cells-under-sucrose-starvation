# Transcriptomic-adaptations-in-rice-suspension-cells-under-sucrose-starvation
The script is based on the use of the GEOquery and limma packages in R, which are popular tools in bioinformatics for processing. 
Transcriptomic Analysis of Sucrose Starvation in Rice Cells (GSE5853)
This repository contains an R script for the analysis of the gene expression dataset GSE5853, which focuses on transcriptomic adaptations in rice suspension cells under sucrose starvation.

Dataset Summary
Title: Transcriptomic adaptations in rice suspension cells under sucrose starvation
Status: Public on Sep 20, 2006
Platform Organism: Oryza sativa Japonica Group
Sample Organism: Oryza sativa
Experiment Type: Expression profiling by array
Contributors: Wang H, Wan A, Hsu C, Lee K, Yu S, Jauh G
Citation: Wang HJ, Wan AR, Hsu CM, Lee KW et al. Plant Mol Biol 2007 Mar;63(4):441-63. PMID: 17115300
Abstract
Sugar is a critical resource for energy and developmental regulation in plants. Sucrose starvation leads to significant changes in cellular morphology, enzyme activities, and gene expression. This study investigates the time-course monitoring of gene expression profiles in sucrose-starved rice (Oryza sativa cv Tainung67) suspension cells, using an Agilent rice chip containing 21495 probes.

Overall Design
The experiment involved analyzing rice cell gene expression after 12, 24, and 48 hours of sucrose starvation. An additional set of controls was used to eliminate the effect of osmotic stress. The data was collected using Agilent rice gene chips.

Analysis Script
The GSE5853_analysis.R script in this repository performs the following tasks:

Data Retrieval: Fetches the GSE5853 dataset from the GEO database.
Data Preparation: Prepares the data for analysis, including normalization.
Differential Expression Analysis: Analyzes differential gene expression using linear modeling.
Data Visualization: Generates plots like MA plots for visualizing results.
Prerequisites
R programming language
Bioconductor packages: GEOquery, limma
How to Run
Install R and required packages.
Clone this repository to your local machine.
Run GSE5853_analysis.R in R or RStudio.
Contact
For any queries related to this dataset or the analysis script, please contact:

Name: Huei-Jing Wang
Email: nkk388@gate.sinica.edu.tw
Organization: Academia Sinica, Institute of Plant and Microbial Biology
