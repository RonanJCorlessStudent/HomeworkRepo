library(TDAmapper)
#library(fastcluster)
#library(ggplot2)
library(igraph)
#library(reticulate)
#library(locfit)
#library(dplyr)
#library(ks)





##Question2


data1<-read.csv('/home/emil/proj/ma500/hw4_20/es1.rin',header=FALSE)
eccentricities<-read.csv('/home/emil/proj/ma500/hw4_20/eccentricities1.csv',header=FALSE)
Data1.mapper<-mapper1D(distance_matrix=data1,
                       filter_values=eccentricities,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data1.graph<-graph.adjacency(Data1.mapper$adjacency,mode="undirected")
plot(Data1.graph,layout=layout.auto(Data1.graph))

