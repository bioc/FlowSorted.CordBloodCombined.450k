#' libraryDataGet
#' @description 
#' Function to load the library data from ExperimentHub
#' @import ExperimentHub
#' @import FlowSorted.Blood.EPIC
#' @importFrom AnnotationHub query
#' @param 
#' title        title of the data, e.g., 'FlowSorted.CordBloodCombined.450k'
#' @return 
#' The function will look for the dataset in ExperimentHub and load the object
#' @examples
#' FlowSorted.CordBloodCombined.450k<-
#' libraryDataGet('FlowSorted.CordBloodCombined.450k')
#' FlowSorted.CordBloodCombined.450k
#' @return
#' This function will return an object matching the title of the ExperimentHub
#' @export 
libraryDataGet <- function(title) {
    assign(title,ExperimentHub()[[query(ExperimentHub(),
                                        title)$ah_id]])
}