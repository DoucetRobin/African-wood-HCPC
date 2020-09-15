###Packages
# diversity and multivariate analyses
library(factoextra)
library(FactoMineR)
library(RColorBrewer)
library(ggdendro)
library(ggplot2)
library(gridExtra)
# data management
library(tidyverse)
library (reshape2)

### Workspace and database importation
setwd("C:\\Users\\doucet.r\\Documents\\ROBIN\\Documents\\Doctorat\\Thèse\\Rédaction\\WST\\Wood description of Pachyelasma tessmanii\\Analyse multi variée")
data <- read.csv2("db_tropix.csv", h=T , sep= ";", row.names ="id")
# Removing qualitative variable
datapca <- data[,(5:14)]

###ACP
pca.wood <- PCA(datapca, scale.unit = T, ncp = 10, graph= T)
# chosing number of principal component
pca.wood$eig 
pca.wood <- PCA(datapca, scale.unit = T, ncp = 4, graph= T)

###HCPC
res.hcpc <- HCPC(pca.wood, metric="euclidean", method = "average")

###Graphics
##Graph 1 : 

p1 <- fviz_dend(res.hcpc, k_colors ="black",
                ylab ='', main='', cex=0.8, labels_track_height=0.07)+
  theme(axis.text.y = element_text(margin=margin(l=10)))

p1

##Graph 2: 
class<-as.data.frame(p1[["plot_env"]][["gdend"]][["labels"]][["label"]])
colnames(class)[1]<-"id"
tmp<-read.csv2("db_tropix.csv", h=T , sep= ";")
tmp<- left_join(class,tmp, by="id")
n<-length(tmp$id)
class2<-tmp%>%
  select(c(6:15))%>%
  scale()%>%
  as.data.frame()%>%
  mutate(num=c(1:n))%>%
  gather("variable","value",1:10)

p2 <-ggplot(class2) +
  geom_point(aes(x      = num,
                 y      = variable,
                 size   = value/2,
                 color  = value),
             show.legend = F) +
  scale_color_viridis_c(option="E", direction = -1)+
  theme(axis.text.x = element_text(colour = "black",angle=90, hjust=1,vjust=0.5,size=0.8),
        axis.text.y = element_text(margin=margin(l=20)),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.ticks = element_blank())+
  xlab(NULL) +
  ylab(NULL)
p2


##Graph arrangement
grid.arrange(p1, p2, nrow = 2,heights=c(3,1))


