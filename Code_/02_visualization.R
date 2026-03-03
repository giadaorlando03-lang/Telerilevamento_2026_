# R code for visualizing multisprectral data

install.packages("viridis")

library(viridis)

library(terra) #pacchetto for using spatial data
library(imageRy) #pacchetto per immagni satellitari

im.list()
# Sentinel 2-bands
# https://gisgeography.com/sentinel-2-bands-combinations/
im.import("sentinel.dolomites.b2.tif")
b2 <- im.import("sentinel.dolomites.b2.tif")

# changing colors
cl <-colorRampPalette(c("darkorchid2","cyan3","darkgoldenrod2"))(100)
plot(b2,col=cl)

# minor numero di sfumature
cl <-colorRampPalette(c("darkorchid2","darkolivegreen3","darkgoldenrod2"))(3)
plot(b2,col=cl)

#usare viridis per cambiare colori
plot(b2, col=inferno(100))

#esercizio
cl <-colorRampPalette(c("gray24","gray48","gray93"))(100)
plot(b2,col=cl)

#par  per mettere due immagin nella stessa riga
par(mfrow=c(1,2))
plot(b2, col=inferno(100))
plot(b2,col=cl)
dev.off() #per chiudere qualsiasi finestra grafica

im.multiframe(1,2) #funzione che fa la stessa cosa ma più semplice
plot(b2, col=inferno(100))
plot(b2,col=cl)
