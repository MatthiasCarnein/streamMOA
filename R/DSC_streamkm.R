
# streakm options:
# -s sizeCoreset 	10000 (Size of the coreset (m))
# -k numClusters 	5 (Number of clusters to compute)
# -l length 100000 (Length of the data stream (n), range: 0, Max_int)

DSC_streamkm <- function(sizeCoreset=10000, numClusters=5, length=100000L) {

  ### Java code does parameter checking
  paramList <- list(
    s=as.integer(sizeCoreset),
    k=as.integer(numClusters),
    l=as.integer(length)
  )

  ## MOA implementation does not return micro-clusters but only macro clusters
  clus <- DSC_MOA_Clusterer("moa/clusterers/streamkm/StreamKM", "StreamKM", paramList)

  clus
}
