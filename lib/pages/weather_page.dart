import 'package:auroraweather/services/weather_service.dart';
import 'package:auroraweather/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WeatherPage> {

  // api key
  final _weatherService = WeatherService('5fe146e8f3d22c50a83529787fc83ecf');
  Weather? _weather;

  // fetch weather
  _fetchWeather() async {
    // get the current city
    String cityName = await _weatherService.getCurrentCity(); 

    // get weather for city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }

    // any errors
    catch(e) {
      print(e);
    }
  }

  // weather animations
  String getWeatherAnimation(String? mainCondition) {
    if(mainCondition == null) return 'assets/sun.json'; // default to sunny

    switch(mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/cloudy.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstorm':
        return 'assets/thunder.json';
      case 'clear':
        return 'assets/sun.json';
      default:
        return 'assets/sun.json';
    }
  }

  // init state
  @override
  void initState() {
    super.initState();

    // fetch weather on startup
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // city name
            Text(
              _weather?.cityName ?? "loading city..",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 23,
              ),
            ),

            // animation
            Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),
        
            // temperature
            Text(
              '${_weather?.temperature.round()}°C',
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 28,
              ),
            ),

            // weather condition
            Text(
              _weather?.mainCondition ?? "",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
