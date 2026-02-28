# Asus Weather & MyZine Revived
This repository contains the decompiled and patched source code for the Asus Weather & Asus MyZine widgets from the Asus Transformer Pad TF101, alongside a custom proxy server that feeds it modern data from OpenWeatherMap.

The original AccuWeather API endpoints (`asus1.accu-weather.com`) that the widget relied on have been shut down for years. This project breathes new life into the widget by intercepting those requests and translating them.

Officially compatible with Android 3.0-4.0.3. Only tested on the TF101, may work on other devices with similar Android versions. Asus Weather Revived does not require root and can be installed as a user app either with adb install or by opening it on the device itself.

## Data Source & Privacy
My server fetches weather data from OpenWeatherMap using the free tier API. This means that while your location data is not sent to Asus or AccuWeather, it is sent to OpenWeatherMap.

I do not collect any personally identifiable information, and the server only logs basic request info for debugging purposes. The source code is available for review.

## Installation
### Asus Weather Revived
Go to Settings > Apps > Asus Weather > Disable, then download the latest release APK from the Releases section and install it. Add the widget to your home screen, tap to configre and enjoy!

### Asus MyZine Revived
**Requires Asus Weather Revived to be installed**. Go to Settings > Apps > Asus MyZine > Disable, then download the latest release APK from the Releases section and install it. Add the widget to your home screen.

Please note that due to permission issues, the MyZine widget cannot fetch emails. The email counter will always show 0, but tapping email will still open the email app.

## Self-hosting
Not currently possible as my server endpoint is hardcoded in the app. Modifying the app to point to your own server and recompiling is possible, but not user-friendly.
