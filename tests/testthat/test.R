
test_that("errors if bad parameters", {
    library(FlowSorted.CordBloodCombined.450k)
    library(FlowSorted.Blood.EPIC)
    library(ExperimentHub)
    hub <- ExperimentHub()
    myfiles <- query(hub, "FlowSorted.CordBloodCombined.450k")
    FlowSorted.CordBloodCombined.450k <- myfiles[[1]]
    RGsetTargets=NULL
    RGsetTargets <- FlowSorted.CordBloodCombined.450k[, 
    FlowSorted.CordBloodCombined.450k$CellType == "WBC"]
    RGsetTargets <- RGsetTargets[,1:3]
    sampleNames(RGsetTargets) <- paste(RGsetTargets$CellType,
                                       seq_len(dim(RGsetTargets)[2]), sep = "_")
    expect_error(expect_message(estimateCellCounts2(RGsetTargets, 
                                            compositeCellType = "Blood", 
                                            processMethod = "preprocessNoob",
                                            probeSelect = "IDOL", 
                                            cellTypes = c("CD8T", "CD4T", "NK",  
                                                          "Bcell", "Mono", 
                                                          "Neu", "nRBC"), 
                                            referencePlatform = 
                                                "IlluminaHumanMethylationEPIC",
                                            referenceset = 
                                        "FlowSorted.CordBloodCombined.450k",
                                            IDOLOptimizedCpGs =
                                                    IDOLOptimizedCpGsCordBlood, 
                                                    returnAll = FALSE)))
    
})

