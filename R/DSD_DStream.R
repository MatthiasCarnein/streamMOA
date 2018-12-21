DSC_DStream <- function(decayFactor=0.001, Cm=3.0, Cl=0.8, Beta=0.3) {

  ### Java code does parameter checking
  paramList <- list(
    d=decayFactor,
    m=Cm,
    l=Cl,
    b=Beta
  )

  clus <- DSC_MOA_Clusterer("moa/clusterers/dstream/Dstream", "DStream", paramList)

  clus
}
