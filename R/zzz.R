.onLoad <- function(libname =
                        find.package("FlowSorted.CordBloodCombined.450k"),
                    pkgname = "FlowSorted.CordBloodCombined.450k") {
    #assign(pkgname, ExperimentHub()[[query(ExperimentHub(), pkgname)$ah_id]])
    fl <- system.file("extdata", "metadata.csv", package=pkgname)
    titles <- read.csv(fl, stringsAsFactors=FALSE)$Title
    createHubAccessors(pkgname, titles)
}

