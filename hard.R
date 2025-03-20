# 📌 Load required libraries
library(readr)
library(dplyr)
library(tidygeocoder)

# 🔹 Step 1: Read the dataset
file_path <- "C:/Users/nanth/Downloads/domestic_trips_2023-10-08.csv"
domestic_trips <- read_csv(file_path)

# 🔹 Step 2: Extract unique locations
unique_locations <- domestic_trips %>%
  select(region) %>%  # Using correct column name
  distinct() %>%
  rename(Location = region)

# 🔹 Step 3: Perform Geocoding
geocoded_locations <- unique_locations %>%
  geocode(Location, method = "osm")  # OpenStreetMap (OSM) geocoding

# 🔹 Step 4: Merge geocoded data back into the dataset
domestic_trips_geocoded <- domestic_trips %>%
  left_join(geocoded_locations, by = c("region" = "Location"))

# 🔹 Step 5: Save the new dataset with latitude & longitude
write_csv(domestic_trips_geocoded, "C:/Users/nanth/Downloads/domestic_trips_geocoded.csv")

#