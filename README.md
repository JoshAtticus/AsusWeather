# Asus Weather Revived
This repository contains the decompiled and patched source code for the classic Asus Weather widget from the Asus Transformer Pad TF101, alongside a custom proxy server that feeds it modern data from OpenWeatherMap.

The original AccuWeather API endpoints (`asus1.accu-weather.com`) that the widget relied on have been shut down for years. This project breathes new life into the widget by intercepting those requests and translating them.

Officially compatible with Android 3.0-4.0.3. Only tested on the TF101, may work on other devices with similar Android versions.

## Data Source & Privacy
My server fetches weather data from OpenWeatherMap using the free tier API. This means that while your location data is not sent to Asus or AccuWeather, it is sent to OpenWeatherMap.

I do not collect any personally identifiable information, and the server only logs basic request info for debugging purposes. The source code is available for review.

## Installation
Go to Settings > Apps > Asus Weather > Disable, then download the latest release APK from the Releases section and install it. Add the widget to your home screen, tap to configre and enjoy!

## Self-hosting
Not currently possible as my server endpoint is hardcoded in the app. Modifying the app to point to your own server and recompiling is possible, but not user-friendly.