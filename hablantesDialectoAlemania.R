library(sf)
library(ggplot2)
library(tmap)
library(tmaptools)
library(leaflet)
library(dplyr)


### Directorio para el trabajo en mac:
#setwd("/Users/luissanchez/Library/CloudStorage/Dropbox/mapasEnRStudio/de_shp")

### Directorio para el trabajo en linux:
setwd("/home/luiss/Dropbox/mapasEnRStudio/de_shp")
options (scipen = 999)

# mydata <- readr::read_csv("medianIncomeCaliforniaByCounty2.csv")
# mydata
# 
# mymap <- st_read("CA_Counties.shp", stringsAsFactors = FALSE)
# 
# map_and_data <- inner_join(mymap, mydata, by = "NAME")
# 
# str(map_and_data)
# 
# ggplot(map_and_data) +
#   geom_sf(aes(fill = Median_Household_Income))
# 
# ggplot(map_and_data) +
#   geom_sf(aes(fill = Median_Household_Income)) +
#   scale_fill_gradient(low = "#56B1F7", high = "#132B43")
# 
# ### Mapa de hablantes de dialecto por estado federado
### Origen del mapa de.shp = https://simplemaps.com/gis/country/de?utm_source=chatgpt.com
mydata2 <- readr::read_csv("numeroHablantesDialectoPorEstadoFederado.csv")
mymap2 <- st_read("de.shp")
map_and_data2 <- inner_join(mymap2, mydata2, by = "name")
#name <- mymap2$name

str(map_and_data2)

ggplot(map_and_data2) +
  geom_sf(aes(fill = Hablantes_de_dialecto))
  
ggplot(map_and_data2) +
  geom_sf(aes(fill = Hablantes_de_dialecto)) +
  scale_fill_gradient(low = "#56B1F7", high = "#132B43")
