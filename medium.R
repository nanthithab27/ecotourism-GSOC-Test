# 📌 Load necessary libraries
library(readr)
library(dplyr)
library(GSODR)
library(lubridate)
library(ggplot2)

# 🔹 Step 1: Read ISD history data
isd_data <- read_csv("C:/Users/nanth/Downloads/isd-history.csv")

# 🔹 Step 2: Find WBAN for USAF 110010 (WOLFSEGG)
station_info <- isd_data %>% filter(USAF == "110010")

# Validate Station Info
if (nrow(station_info) == 0) {
  stop("Station 110010 not found in ISD history data!")
}

# Extract WBAN Code
wban_code <- station_info$WBAN[1]

# Validate WBAN
if (is.na(wban_code)) {
  stop("WBAN code not found for station 110010!")
}

# 🔹 Step 3: Fetch Weather Data for 2023
station_id <- paste0("110010-", wban_code)
weather_data <- get_GSOD(years = 2023, station = station_id)

# 🔹 Step 4: Clean Data
weather_data <- weather_data %>%
  filter(!is.na(TEMP) & !is.na(PRCP)) %>%  # Remove missing values
  mutate(YEARMODA = as.Date(YEARMODA)) %>% # Ensure correct Date format
  filter(!is.na(YEARMODA))  # Remove NA dates

# Validate Data
if (nrow(weather_data) == 0) {
  stop("No valid weather data found for 2023 at station 110010!")
}

# 🔹 Step 5: Plot Temperature Trends
ggplot(weather_data, aes(x = YEARMODA, y = TEMP)) +
  geom_line(color = "gray", size = 0.8, alpha = 0.6) +  # Base temperature trend
  geom_smooth(method = "loess", color = "blue", fill = "lightblue", se = TRUE, size = 1.2) +  # Smoothed trend
  labs(
    title = "Daily Temperature Trends in 2023 - WOLFSEGG (110010)",
    subtitle = "Smoothed trend with daily temperature fluctuations",
    x = "Date",
    y = "Temperature (°C)"
  ) +
  theme_bw() +  # Clean white background
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12, face = "italic"),
    axis.title = element_text(size = 14),
    axis.text = element_text(size = 12),
    legend.position = "none"
  )