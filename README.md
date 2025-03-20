# 📌  Platypus Occurrence Data Visualization

## 🚀 Project Overview
This project retrieves Platypus occurrence data from the Global Biodiversity Information Facility (GBIF) and visualizes it on a map of Australia. The data consists of platypus sightings, including their latitude and longitude, which are then plotted using ggplot2 and sf libraries in R.

## 👤 Author: Nanthitha Balamurugan

## 📂 Project Structure
1) platypus_data.R - The main script that retrieves data and plots it on a map.

## 🔧 Requirements
Before running the script, ensure you have installed the following R packages:

### 📊 Step-by-Step Guide
## 1️⃣ Download Platypus Occurrence Data 🦆
We use the rgbif package to retrieve occurrence data of the Platypus (Ornithorhynchus anatinus) in Australia:

### ✅ What happens here?

The occ_data() function fetches 1000 records of Platypus sightings in Australia.

The data includes coordinates (latitude & longitude) of sightings.

## 2️⃣ Plot Platypus Sightings on a Map 📍
Using ggplot2 and sf, we visualize the locations of platypus sightings on an Australia map.

### ✅ What happens here?

The rnaturalearth package provides a map of Australia.

sf (Simple Features) converts the platypus sighting coordinates into spatial points.

ggplot2 plots the sightings on the map.

## 🎯 Expected Output
A beautiful map of Australia 🗺️ with blue dots representing Platypus sightings.

The map is minimalistic & clear, making it easy to analyze distribution patterns.

## 💡 Future Improvements
Add interactive visualization with leaflet for better exploration.

Include time-based analysis to show trends over different years.

Integrate other species data for biodiversity studies.

## 🏁 Conclusion
This project demonstrates how to retrieve and visualize species occurrence data using R. With minor modifications, this can be extended to any other species or region. 🦘🌏

## 📌 For questions or improvements, feel free to contribute! 🚀

