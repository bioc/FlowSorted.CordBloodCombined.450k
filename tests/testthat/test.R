
#test_that("errors if bad parameters", {
#    library(FlowSorted.CordBloodCombined.450k)
#    library(ExperimentHub)
#    if (memory.limit()>8000){
#    hub <- ExperimentHub()
#    myfiles <- query(hub, "FlowSorted.CordBloodCombined.450k")
#    FlowSorted.CordBloodCombined.450k <- myfiles[[1]]
#    expect_false(!is(FlowSorted.CordBloodCombined.450k, "RGChannelSet"))
#    }
#})

