print(head(Wholesale.customers.data))
dim(Wholesale.customers.data)
wholesale<-data.frame(Wholesale.customers.data)
table(wholesale$Region)
table(wholesale$Channel)

Cluster_wholesales<-data.frame(wholesale[3:8])

kmeans.result<-kmeans(Cluster_wholesales,3)
print(kmeans.result)
table(wholesale$Channel,kmeans.result$cluster)

table(wholesale$Region,kmeans.result$cluster)

kmeans.result$totss 
kmeans.result$tot.withinss


plot(Cluster_wholesales,col=kmeans.result$cluster)
