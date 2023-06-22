# Read the house Worth Data
DataPath = "XYZ"
DataPath = "/DataWORK/SOMWORK/NOTES_SERIES-TK3/DATA_MINING/";
DataFile = paste(DataPath,"M3_House_Worth.csv",sep="");

DataHouseWorth = read.csv(DataFile);
str(DataHouseWorth);
DataHouseWorth$BasementArea = NULL; ## Remove extraneous variables



## HOMEWORK 3
## Question 1
## Evaluate the usefulness or otherwise of using the basement area as a variate during clustering of the dataset 
## Evaluate results to check for useful cutoffs that can be prescribed as a basis of policy decisions associating tags/clusters to the datapoints
## Visualize: StoreArea/BasementArea
##            LawnArea/BasementArea

## FUNDAMENTAL TASK 1 (EVALUATION)
## PROJECT WARNING - Look for dataset that can be used to evaluate clustering methods

## Question 2
## Research on the methods used for hierarchical clustering and their apparent differences [page 38/55 in the class slides]
## Question 3
## Report on the subsequent code for k-means/k-medians as well as density-based clustering


#library(ggplot2);
library(ggplot2, lib.loc = "/usr/lib/R/site-library")

ggplot(DataHouseWorth, aes(StoreArea, LawnArea, color = HouseNetWorth
)) + geom_point();


DistanceCalculation1 = dist(DataHouseWorth[,2:3],method = "euclidean"); ## Calculate distances to be used during clustering
DistanceCalculation1[1:5]
HC_Clusters = hclust(DistanceCalculation1); ##
str(HC_Clusters)
par(mfrow=c(1,2))
plot(HC_Clusters,main="Euclidean-based cluster dendogram"); #Plot the dendogram


##=====================
DistanceCalculation2 = dist(DataHouseWorth[,2:3],method = "manhattan"); ## Calculate distances to be used during clustering
DistanceCalculation2[1:5]
HC_Clusters2 = hclust(DistanceCalculation2); ##
str(HC_Clusters2)
plot(HC_Clusters2,main = "Manhattan-based cluster dendogram"); #Plot the dendogram
##=====================

str(HC_Clusters)


## CLUSTER CUTOFF IMPLEMENTATION
HC_Clust_Cut2 = cutree(HC_Clusters, k = 2);
HC_Clust_Cut3 = cutree(HC_Clusters, k = 3);
HC_Clust_Cut3Manhattan = cutree(HC_Clusters2, k = 3);
HC_Clust_Cut4 = cutree(HC_Clusters, k = 4);

## Interpretation of the clustering results after cutting the tree at 3 branches
Results_Cluster3 = cbind(DataHouseWorth,ClusterResults=HC_Clust_Cut3)
head(Results_Cluster3);
Results_Cluster3[1:20,]

table(DataHouseWorth$HouseNetWorth); ## ACTUAL CLASSES
## COMPARISON: PREDICTED vs ACTUAL
table(HC_Clust_Cut2,DataHouseWorth$HouseNetWorth);
table(HC_Clust_Cut3,DataHouseWorth$HouseNetWorth);
table(HC_Clust_Cut3Manhattan,DataHouseWorth$HouseNetWorth);
table(HC_Clust_Cut4,DataHouseWorth$HouseNetWorth);


ggplot(DataHouseWorth, aes(StoreArea, LawnArea, color=HouseNetWorth))+
  geom_point(alpha = 0.4, size = 3.5)

ggplot(DataHouseWorth, aes(StoreArea, LawnArea, color=HouseNetWorth))+
  geom_point(alpha = 0.4, size = 3.5)+
  geom_point(col = HC_Clust_Cut3) +
  scale_color_manual(values = c('black','red','green'));

library(dbscan); ## Load the library that provides the function hullplot
?hullplot
hullplot(DataHouseWorth[,2:3],HC_Clust_Cut3,
         xlab="Store Area",
         ylab="Lawn Area");

hullplot(DataHouseWorth[,2:3],HC_Clust_Cut3Manhattan,
         xlab="Store Area",
         ylab="Lawn Area",main = "Manhanttan-based Convex Hull");
