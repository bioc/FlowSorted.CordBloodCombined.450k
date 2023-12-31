#' FlowSorted.CordBloodCombined.450k
#' @description
#' The FlowSorted.CordBloodCombined.450k package contains data derived from 
#' Illumina HumanMethylation450K and Illumina HumanMethylationEPIC DNA 
#' methylation microarrays (Gervin K, Salas LA et al. under review), consisting
#' of 263 blood cell references and 26 umbilical cord blood samples, formatted 
#' as an RGChannelSet object for integration and normalization using most of  
#' the existing Bioconductor packages.
#' 
#' This package contains cleaned data from four different umbilical cord blood 
#' references similar to the FlowSorted.CordBlood.450K package consisting of 
#' data from umbilical cord blood samples generated from healthy newborns. 
#' However, when using the cleaned dataset (eliminating potential cell cross 
#' contamination) and using the IDOL procedure compared to minfi estimates the 
#' cell type composition obtained through FlowSorted.CordBlood.450k package were
#' less precise and biased compared to actual cell counts. Hence, this package 
#' consists of appropriate data for deconvolution of umbilical cord blood 
#' samples used in for example EWAS relying in both 450K and EPIC technology.
#' 
#' Researchers may find this package useful as these samples represent  
#' different cellular populations ( T lymphocytes (CD4+ and CD8+), B cells  
#' (CD19+), monocytes (CD14+), NK cells (CD56+), Granulocytes, and nucleated 
#' red blood cells of cell sorted umbilical cord blood. The estimates were 
#' contrasted versus FACS proportions in 22 umbilical samples, and validated 
#' using 197 umbilical cord blood samples.  
#' 
#' These data can be integrated with the minfi Bioconductor package to   
#' estimate cellular composition in users' umbilical cord blood Illumina 450K  
#' and EPIC samples using a modified version of the algorithm constrained  
#' projection/quadratic programming described in Houseman et al. 2012. However, 
#' for more accurate estimations we suggests that the user prefers IDOL over  
#' minfi automatic estimations, using the function estimateCellCounts2 from   
#' the package FlowSorted.Blood.EPIC which allows using customized sets of   
#' probes from IDOL (see IDOLOptimizedCpGsCordBlood for an example).
#'
#' @import minfi
#' @import SummarizedExperiment
#' @import IlluminaHumanMethylation450kanno.ilmn12.hg19
#' @import IlluminaHumanMethylationEPICanno.ilm10b4.hg19
#' @import ExperimentHub
#' @importFrom utils data
#' @importFrom utils read.csv
#' @importFrom utils memory.limit

#' 
#' @format A class: RGChannelSet, dimensions: 575130 289 
#' 
#' @seealso
#' References \enumerate{
#' \item  K Gervin, LA Salas et al. (2019) \emph{Systematic evaluation and 
#' validation of references and library selection methods for deconvolution of 
#' cord blood DNA methylation data}. Clin Epigenetics 11,125. doi:
#' 10.1186/s13148-019-0717-y
#' \item  KM Bakulski, et al. (2016) \emph{DNA methylation of cord blood 
#' cell types: Applications for mixed cell birth studies}. Epigenetics 11:5. 
#' doi:10.1080/15592294.2016.1161875.
#' \item  K Gervin, et al. (2016) \emph{Cell type specific DNA methylation in
#' cord blood: A 450K-reference data set and cell count-based validation of 
#' estimated cell type composition}. Epigenetics 11:690-8. 
#' doi:10.1080/15592294.2016.1214782. 
#' \item  OM de Goede, et al. (2015) \emph{Nucleated red blood cells impact DNA 
#' methylation and expression analyses of cord blood hematopoietic cells}. 
#' Clin Epigenetics. 7:95. doi:10.1186/s13148-015-0129-6.
#' \item  X Lin, et al. (2018) \emph{Cell type-specific DNA methylation in 
#' neonatal cord tissue and cord blood: A 850K-reference panel and comparison 
#' of cell-types}. Epigenetics. 13:941-58. doi:10.1080/15592294.2018.1522929.
#' \item LA Salas et al. (2018). \emph{An optimized library for 
#' reference-based deconvolution of whole-blood biospecimens assayed using the 
#' Illumina HumanMethylationEPIC BeadArray}. Genome Biology 19, 64. doi:
#' 10.1186/s13059-018-1448-7.
#' \item DC Koestler et al. (2016). \emph{Improving cell mixture deconvolution 
#' by identifying optimal DNA methylation libraries (IDOL)}. BMC bioinformatics.
#' 17, 120. doi: 10.1186/s12859-016-0943-7.
#' \item EA Houseman et al. (2012) \emph{DNA methylation arrays as surrogate
#' measures of cell mixture distribution}. BMC Bioinformatics 13, 86.
#' doi:10.1186/1471-2105-13-86.
#' \item \pkg{minfi} package for tools for estimating cell type
#' composition in blood using these data
#' }
#' 
#' @examples
#' FlowSorted.CordBloodCombined.450k
#' #FlowSorted.CordBloodCombined.450k<-
#' #libraryDataGet('FlowSorted.CordBloodCombined.450k')
#' #FlowSorted.CordBloodCombined.450k
#' #table(FlowSorted.CordBloodCombined.450k$CellType)
#' @return RGChannelSet 289 samples
#' @usage 
#' FlowSorted.CordBloodCombined.450k
#' #See ?estimateCellCounts2 for cell deconvolution guidelines
"FlowSorted.CordBloodCombined.450k"
