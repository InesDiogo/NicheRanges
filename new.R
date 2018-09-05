#September 2018
#Ines Diogo
#Niche Limits are Range Limits for Marine Forests

#define working directory
setwd("C:/Users/inesw_000/Dropbox/Niche Limits are Range Limits for marine forests/Data")

# install.packages("sdmpredictors")
# install.packages("leaflet")
# install.packages("raster")
# install.packages("gdata")

#load relevant packages
library("sdmpredictors")
library("leaflet")
library("raster")
library("gdata")

#import database
df1 = read.delim(file="Database_v2.txt", sep='\t', 
                 colClasses = c("integer","logical","integer", "factor", "factor","integer",
                                "logical","character","character","character", "factor", "factor",
                                "factor","integer","integer","character","integer","character",
                                "factor","character","integer","logical","logical","logical",
                                "logical","logical","logical","logical","logical","logical",
                                "logical","logical","logical"))
df2 = read.delim(file="Database_v2_2.txt", sep='\t')
df4 = rbind(df1, df2)

# df4 = readRDS("df3.rds")

#filter df4 for specific species
df3_56 = df4[df4$SPECIES == 56 ,]
# df3_56$LON = as.numeric(as.character(df3_56$LON))
# df3_56$LAT = as.numeric(as.character(df3_56$LAT))

df3_2 = df4[df4$SPECIES == 2 ,]
# df3_2$LON = as.numeric(as.character(df3_2$LON))
# df3_2$LAT = as.numeric(as.character(df3_2$LAT))

df3_4 = df4[df4$SPECIES == 4 ,]
# df3_4$LON = as.numeric(as.character(df3_4$LON))
# df3_4$LAT = as.numeric(as.character(df3_4$LAT))

df3_5 = df4[df4$SPECIES == 5 ,]
# df3_5$LON = as.numeric(as.character(df3_5$LON))
# df3_5$LAT = as.numeric(as.character(df3_5$LAT))

df3_7 = df4[df4$SPECIES == 7 ,]
# df3_7$LON = as.numeric(as.character(df3_7$LON))
# df3_7$LAT = as.numeric(as.character(df3_7$LAT))

df3_10 = df4[df4$SPECIES == 10 ,]
# df3_10$LON = as.numeric(as.character(df3_10$LON))
# df3_10$LAT = as.numeric(as.character(df3_10$LAT))

df3_11 = df4[df4$SPECIES == 11 ,]
# df3_11$LON = as.numeric(as.character(df3_11$LON))
# df3_11$LAT = as.numeric(as.character(df3_11$LAT))

df3_14 = df4[df4$SPECIES == 14 ,]
# df3_14$LON = as.numeric(as.character(df3_14$LON))
# df3_14$LAT = as.numeric(as.character(df3_14$LAT))

df3_15 = df4[df4$SPECIES == 15 ,]
# df3_15$LON = as.numeric(as.character(df3_15$LON))
# df3_15$LAT = as.numeric(as.character(df3_15$LAT))

df3_16 = df4[df4$SPECIES == 16 ,]
# df3_16$LON = as.numeric(as.character(df3_16$LON))
# df3_16$LAT = as.numeric(as.character(df3_16$LAT))

df3_17 = df4[df4$SPECIES == 17 ,]
# df3_17$LON = as.numeric(as.character(df3_17$LON))
# df3_17$LAT = as.numeric(as.character(df3_17$LAT))

df3_22 = df4[df4$SPECIES == 22 ,]
# df3_22$LON = as.numeric(as.character(df3_22$LON))
# df3_22$LAT = as.numeric(as.character(df3_22$LAT))

df3_23 = df4[df4$SPECIES == 23 ,]
# df3_23$LON = as.numeric(as.character(df3_23$LON))
# df3_23$LAT = as.numeric(as.character(df3_23$LAT))

df3_24 = df4[df4$SPECIES == 24 ,]
# df3_24$LON = as.numeric(as.character(df3_24$LON))
# df3_24$LAT = as.numeric(as.character(df3_24$LAT))

df3_29 = df4[df4$SPECIES == 29 ,]
# df3_29$LON = as.numeric(as.character(df3_29$LON))
# df3_29$LAT = as.numeric(as.character(df3_29$LAT))

df3_35 = df4[df4$SPECIES == 35 ,]
# df3_35$LON = as.numeric(as.character(df3_35$LON))
# df3_35$LAT = as.numeric(as.character(df3_35$LAT))

df3_38 = df4[df4$SPECIES == 38 ,]
# df3_38$LON = as.numeric(as.character(df3_38$LON))
# df3_38$LAT = as.numeric(as.character(df3_38$LAT))

df3_43 = df4[df4$SPECIES == 43 ,]
# df3_43$LON = as.numeric(as.character(df3_43$LON))
# df3_43$LAT = as.numeric(as.character(df3_43$LAT))

df3_44 = df4[df4$SPECIES == 44 ,]
# df3_44$LON = as.numeric(as.character(df3_44$LON))
# df3_44$LAT = as.numeric(as.character(df3_44$LAT))

df3_49 = df4[df4$SPECIES == 49 ,]
# df3_49$LON = as.numeric(as.character(df3_49$LON))
# df3_49$LAT = as.numeric(as.character(df3_49$LAT))

df3_50 = df4[df4$SPECIES == 50 ,]
# df3_50$LON = as.numeric(as.character(df3_50$LON))
# df3_50$LAT = as.numeric(as.character(df3_50$LAT))

df3_51 = df4[df4$SPECIES == 51 ,]
# df3_51$LON = as.numeric(as.character(df3_51$LON))
# df3_51$LAT = as.numeric(as.character(df3_51$LAT))

df3_52 = df4[df4$SPECIES == 52 ,]
# df3_52$LON = as.numeric(as.character(df3_52$LON))
# df3_52$LAT = as.numeric(as.character(df3_52$LAT))

df3_62 = df4[df4$SPECIES == 62 ,]
# df3_62$LON = as.numeric(as.character(df3_62$LON))
# df3_62$LAT = as.numeric(as.character(df3_662$LAT))

df3_63 = df4[df4$SPECIES == 63 ,]
# df3_63$LON = as.numeric(as.character(df3_63$LON))
# df3_63$LAT = as.numeric(as.character(df3_63$LAT))

df3_64 = df4[df4$SPECIES == 64 ,]
# df3_64$LON = as.numeric(as.character(df3_64$LON))
# df3_64$LAT = as.numeric(as.character(df3_64$LAT))

df3_65 = df4[df4$SPECIES == 65 ,]
# df3_65$LON = as.numeric(as.character(df3_65$LON))
# df3_65$LAT = as.numeric(as.character(df3_65$LAT))

df3_66 = df4[df4$SPECIES == 66 ,]
# df3_66$LON = as.numeric(as.character(df3_66$LON))
# df3_66$LAT = as.numeric(as.character(df3_66$LAT))

df3_67 = df4[df4$SPECIES == 67 ,]
# df3_67$LON = as.numeric(as.character(df3_67$LON))
# df3_67$LAT = as.numeric(as.character(df3_67$LAT))

df3_68 = df4[df4$SPECIES == 68 ,]
# df3_68$LON = as.numeric(as.character(df3_68$LON))
# df3_68$LAT = as.numeric(as.character(df3_68$LAT))

df3_69 = df4[df4$SPECIES == 69 ,]
# df3_69$LON = as.numeric(as.character(df3_69$LON))
# df3_69$LAT = as.numeric(as.character(df3_69$LAT))

df3_70 = df4[df4$SPECIES == 70 ,]
# df3_70$LON = as.numeric(as.character(df3_70$LON))
# df3_70$LAT = as.numeric(as.character(df3_70$LAT))

df3_71 = df4[df4$SPECIES == 71 ,]
# df3_71$LON = as.numeric(as.character(df3_71$LON))
# df3_71$LAT = as.numeric(as.character(df3_71$LAT))

df3_72 = df4[df4$SPECIES == 72 ,]
# df3_72$LON = as.numeric(as.character(df3_72$LON))
# df3_72$LAT = as.numeric(as.character(df3_72$LAT))

df3_73 = df4[df4$SPECIES == 73 ,]
# df3_73$LON = as.numeric(as.character(df3_73$LON))
# df3_73$LAT = as.numeric(as.character(df3_73$LAT))

df3_74 = df4[df4$SPECIES == 74 ,]
# df3_74$LON = as.numeric(as.character(df3_74$LON))
# df3_74$LAT = as.numeric(as.character(df3_74$LAT))

df3_75 = df4[df4$SPECIES == 75 ,]
# df3_75$LON = as.numeric(as.character(df3_75$LON))
# df3_75$LAT = as.numeric(as.character(df3_75$LAT))

df3_77 = df4[df4$SPECIES == 77 ,]
# df3_77$LON = as.numeric(as.character(df3_77$LON))
# df3_77$LAT = as.numeric(as.character(df3_77$LAT))

df3_82 = df4[df4$SPECIES == 82 ,]
# df3_82$LON = as.numeric(as.character(df3_82$LON))
# df3_82$LAT = as.numeric(as.character(df3_82$LAT))

df3_83 = df4[df4$SPECIES == 83 ,]
# df3_83$LON = as.numeric(as.character(df3_83$LON))
# df3_83$LAT = as.numeric(as.character(df3_83$LAT))

df3_84 = df4[df4$SPECIES == 84 ,]
# df3_84$LON = as.numeric(as.character(df3_84$LON))
# df3_84$LAT = as.numeric(as.character(df3_84$LAT))

df3_85 = df4[df4$SPECIES == 85 ,]
# df3_85$LON = as.numeric(as.character(df3_85$LON))
# df3_85$LAT = as.numeric(as.character(df3_85$LAT))

df3_86 = df4[df4$SPECIES == 86 ,]
# df3_86$LON = as.numeric(as.character(df3_86$LON))
# df3_86$LAT = as.numeric(as.character(df3_86$LAT))

df3_87 = df4[df4$SPECIES == 87 ,]
# df3_87$LON = as.numeric(as.character(df3_87$LON))
# df3_87$LAT = as.numeric(as.character(df3_87$LAT))

df3_90 = df4[df4$SPECIES == 90 ,]
# df3_90$LON = as.numeric(as.character(df3_90$LON))
# df3_90$LAT = as.numeric(as.character(df3_90$LAT))

df3_93 = df4[df4$SPECIES == 93 ,]
# df3_93$LON = as.numeric(as.character(df3_93$LON))
# df3_93$LAT = as.numeric(as.character(df3_93$LAT))

df3_95 = df4[df4$SPECIES == 95 ,]
# df3_95$LON = as.numeric(as.character(df3_95$LON))
# df3_95$LAT = as.numeric(as.character(df3_95$LAT))

df3_96 = df4[df4$SPECIES == 96 ,]
# df3_96$LON = as.numeric(as.character(df3_96$LON))
# df3_96$LAT = as.numeric(as.character(df3_96$LAT))

df3_97 = df4[df4$SPECIES == 97 ,]
# df3_97$LON = as.numeric(as.character(df3_97$LON))
# df3_97$LAT = as.numeric(as.character(df3_97$LAT))

df3_98 = df4[df4$SPECIES == 98 ,]
# df3_98$LON = as.numeric(as.character(df3_98$LON))
# df3_98$LAT = as.numeric(as.character(df3_98$LAT))

df3_99 = df4[df4$SPECIES == 99 ,]
# df3_99$LON = as.numeric(as.character(df3_99$LON))
# df3_99$LAT = as.numeric(as.character(df3_99$LAT))

df3_100 = df4[df4$SPECIES == 100 ,]
# df3_100$LON = as.numeric(as.character(df3_100$LON))
# df3_100$LAT = as.numeric(as.character(df3_100$LAT))

df3_101 = df4[df4$SPECIES == 101 ,]
# df3_101$LON = as.numeric(as.character(df3_101$LON))
# df3_101$LAT = as.numeric(as.character(df3_101$LAT))

df3_121 = df4[df4$SPECIES == 121 ,]
# df3_121$LON = as.numeric(as.character(df3_121$LON))
# df3_121$LAT = as.numeric(as.character(df3_121$LAT))

df3_129 = df4[df4$SPECIES == 129 ,]
# df3_129$LON = as.numeric(as.character(df3_129$LON))
# df3_129$LAT = as.numeric(as.character(df3_129$LAT))

df3_131 = df4[df4$SPECIES == 131 ,]
# df3_131$LON = as.numeric(as.character(df3_131$LON))
# df3_131$LAT = as.numeric(as.character(df3_131$LAT))

dataset.species.oi <- df3_131

# View(dataset.species.oi)

#build leaflet map, add tiles, add background map of choice
m = leaflet()
m = addTiles(m)
m = addProviderTiles(m, providers$Esri.NatGeoWorldMap)

#add species data
m <- addCircleMarkers(m, radius = 2 , stroke = FALSE, fillOpacity = 0.8 ,
                      color = "red" , lng=dataset.species.oi$LON, lat=dataset.species.oi$LAT, 
                      popup = as.character(dataset.species.oi$X..Record.ID))
m <-  addProviderTiles(m,providers$CartoDB.Positron)
#visualize map
m

#analyse Bio-ORACLE metadata
layers <- list_layers()
View(layers[layers$dataset_code == "Bio-ORACLE",])

variables <- c("BO2_salinitymin_ss" , "BO2_tempmax_ss" , "BO2_tempmin_ss" , "BO2_templtmax_ss" , "BO2_templtmin_ss" , "BO_nitrate" , "BO_phosphate")
variables.rasters <- load_layers(variables)    

variables.rasters

names(variables.rasters) <- c("Salinity.min","Temp.max","Temp.min","Temp.lt.max","Temp.lt.min","Nitrate","Phosphate")

to.relocate <- extract( subset(variables.rasters,1) ,dataset.species.oi[,9:10])
to.relocate <- which(is.na(to.relocate))

records.with.na <- dataset.species.oi[to.relocate,]


m <- leaflet()
m <- addTiles(m)
m <- addProviderTiles(m,providers$CartoDB.Positron)
m <- addCircleMarkers(m, radius = 6 , stroke = FALSE, fillOpacity = 0.8 , color = "Black" , lng=records.with.na$LON, lat=records.with.na$LAT, popup = as.character(records.with.na$X..Record.ID))
m <- addCircleMarkers(m, radius = 2 , stroke = FALSE, fillOpacity = 0.8 , 
                      color = "Red" , lng=dataset.species.oi$LON, lat=dataset.species.oi$LAT,
                      popup = as.character(dataset.species.oi$X..Record.ID))
m


environmental.niche <- as.data.frame(extract( variables.rasters ,dataset.species.oi[,9:10]))
View(environmental.niche)

results <- matrix(NA,ncol=length(names(variables.rasters)),nrow=4)
rownames(results) <- c("min","max","mean","sd")
colnames(results) <- names(variables.rasters)

for( col in 1:7 ) {
  
  results[1,col] <- min(environmental.niche[,col],na.rm=TRUE)
  results[2,col] <- max(environmental.niche[,col],na.rm=TRUE)
  results[3,col] <- mean(environmental.niche[,col],na.rm=TRUE)
  results[4,col] <- sd(environmental.niche[,col],na.rm=TRUE)

}

results

var.to.plot <- 1

hist(environmental.niche[,var.to.plot], xlab = colnames(environmental.niche)[var.to.plot] , breaks = 25 )

results[1,var.to.plot]
results[2,var.to.plot]

var.label <- seq(19,37,length.out = 7)
var.at <- seq(19,37,length.out = 7)
  
hist(environmental.niche[,var.to.plot], xlab = colnames(environmental.niche)[var.to.plot] , breaks = 25 , xaxt='n')
axis(side=1, 
     at = var.at, 
     labels = var.label )

# ?extract


