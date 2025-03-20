# 📌 README - Ecotourism Data Package

## 🚀 Project Overview

The Ecotourism Data Package provides tourism records and endangered wildlife reports, making it a valuable resource for teaching data visualization, temporal data analysis, and mapping techniques. This package helps researchers, educators, and students explore tourism data linked to wildlife sightings.

## 👤 Author: Nanthitha Balamurugan

## 📂 Project Structure

<img width="350" alt="Screenshot 2025-03-20 170949" src="https://github.com/user-attachments/assets/8ff98243-25e9-491d-a430-cbdb025a5446" />


## 📊 Project Tasks & Implementation

The project involves the following key steps:

### 1️⃣ Easy Task: Platypus Occurrence Data 🦆

Objective: Download occurrence data for the Platypus in Australia (2024) and visualize it on a map.

Implementation:

Used the rgbif package to retrieve occurrence data.

Mapped platypus sightings using ggplot2 and sf.

Output Image: 

<img width="431" alt="Rplot-easy" src="https://github.com/user-attachments/assets/74726e78-0d17-4307-b4f8-38af6b15a9ea" />


### 2️⃣ Medium Task: Weather Data for Victoria 🌦️

Objective: Use the GSODR package to download one year of daily weather data (temperature & precipitation) for a station near large platypus populations.

Implementation:

Extracted climate data from ISD history.

Processed and cleaned temperature and precipitation data.

Created a plot showing temperature trends over time.

Output Image: 

<img width="431" alt="Rplot-medium" src="https://github.com/user-attachments/assets/af2dd023-be7c-481f-a943-03adc25007c7" />


### 3️⃣ Hard Task: Geocoding Tourism Locations 📌

Objective: Extract tourism stopover locations from domestic_trips_2023-10-08.csv, then geocode them with latitude & longitude.

Implementation:

Extracted unique location names from the dataset.

Used tidygeocoder to fetch latitude & longitude.

Merged geocoded data back into the dataset.

Output Image: 

<img width="871" alt="task3" src="https://github.com/user-attachments/assets/06e7fec5-c891-4725-839f-79ea43f9cbb1" />


## 🎯 Expected Impact

This data package aims to make a significant impact by:

Enhancing data-driven teaching & learning in classrooms 📚.

Supporting biodiversity & tourism research 🏞️.

Providing open-source datasets for scientific publications 📖.

