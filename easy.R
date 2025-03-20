#Download Platypus Occurrence Data (Easy Test)
library(rgbif)

# Get platypus occurrence data from GBIF (Global Biodiversity Information Facility)
platypus_data <- occ_data(scientificName = "Ornithorhynchus anatinus", country = "AU", limit = 1000)

# View the first few rows
head(platypus_data$data)
#Plot Platypus Sightings on a Map

library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)

# Get Australia map
australia <- ne_countries(scale = "medium", country = "Australia", returnclass = "sf")

# Convert sighting data to spatial points
platypus_points <- st_as_sf(platypus_data$data, coords = c("decimalLongitude", "decimalLatitude"), crs = 4326, remove = FALSE)

# Plot
print(
  ggplot() +
    geom_sf(data = australia, fill = "lightgray") +
    geom_point(data = platypus_points, aes(x = decimalLongitude, y = decimalLatitude), color = "blue", alpha = 0.6) +
    theme_minimal() +
    ggtitle("Platypus Sightings in Australia (2024)")
)
