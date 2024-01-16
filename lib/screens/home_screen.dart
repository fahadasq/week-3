import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        addAutomaticKeepAlives: false,
        scrollDirection: Axis.vertical,
        children: [
          WeatherCard(
            location: "London",
            temperature: 16,
            cityImage: Image.asset('assets/images/London.jpg'),
          ),
          const SizedBox(height: 12.0),
          WeatherCard(
            location: "New York",
            temperature: 19,
            cityImage: Image.asset('assets/images/NewYork.jpg'),
          ),
          const SizedBox(height: 12.0),
          WeatherCard(
            location: "Riyadh",
            temperature: 22,
            cityImage: Image.asset('assets/images/Riyadh.jpg'),
          ),
          const SizedBox(height: 12.0),
          WeatherCard(
            location: "London",
            temperature: 16,
            cityImage: Image.asset('assets/images/London.jpg'),
          ),
          const SizedBox(height: 12.0),
          WeatherCard(
            location: "New York",
            temperature: 19,
            cityImage: Image.asset('assets/images/NewYork.jpg'),
          ),
          const SizedBox(height: 12.0),
          WeatherCard(
            location: "Riyadh",
            temperature: 22,
            cityImage: Image.asset('assets/images/Riyadh.jpg'),
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}
