library(terra) #package to manage spatial data
library(imageRy) #package for RS didactis

setwd("C:/Users/Giada/OneDrive/Documenti/doc UNIBO/immagini telerilevamento")
getwd()
list.files()

ice <-rast("ISS074-E-417243_lrg.jpg")

im.multiframe(1,2)
plot(ice[[1]])
plot(ice[[2]])

png
im.multiframe(1,2)


#istogrammi
im.multiframe(3,1)

#DA RIVEDERE E FINIRE


