# AuroraWeather ☀️🌧️

AuroraWeather is a sleek Flutter-based **mobile weather app** that provides real-time weather updates with beautiful Lottie animations.  
It detects your **current location**, fetches weather data from **OpenWeatherMap**, and displays it in a clean, user-friendly interface.

---

## ✨ Features
- 🌍 Auto-detects current city using **GPS & reverse geocoding**
- ☁️ Fetches live weather data from **OpenWeatherMap API**
- 🎞️ Beautiful weather animations powered by **Lottie**
- 🌡️ Displays city, temperature (°C), and main condition
- 📱 Works seamlessly on **Android & iOS**

---

## 📂 Project Structure
```
lib/
 ├─ main.dart                # App entry point
 ├─ models/
 │   └─ weather_model.dart   # Weather data model
 ├─ services/
 │   └─ weather_service.dart # API + location service
 ├─ pages/
 │   └─ weather_page.dart    # Weather UI screen
assets/
 ├─ sun.json
 ├─ cloudy.json
 ├─ rain.json
 └─ thunder.json
pubspec.yaml
```

---

## 🛠️ Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/AuroraWeather.git
cd AuroraWeather
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Add your OpenWeatherMap API Key**  
   In `weather_page.dart`, replace the placeholder API key with your own:
   ```dart
   final _weatherService = WeatherService('YOUR_API_KEY_HERE');
   ```

4. **Run the app**
```bash
flutter run
```

---

## 📦 Build APK (Android)
```bash
flutter build apk --release
```
The APK will be generated at:
```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🔑 Requirements
- Flutter SDK (latest stable)
- Dart (bundled with Flutter)
- Android Studio / VS Code (recommended)
- OpenWeatherMap API key (free at https://openweathermap.org/)

---

## 📸 Screenshots (Example)
*(Replace with actual screenshots of your app)*
- Loading state (detecting city)
- Weather displayed with animation
- Clear, Rainy, Cloudy examples

---

## 📜 License
This project is licensed under the MIT License.

---

## 👨‍💻 Author
Developed by **Aniket More** 🚀  
