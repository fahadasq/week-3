import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard(
      {super.key,
      required this.location,
      required this.temperature,
      required this.cityImage});

  final String location;
  final int temperature;
  final Image cityImage;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black,
      elevation: 8.0,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        height: 150,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color.fromARGB(30, 255, 255, 255),
                    Color.fromARGB(100, 255, 255, 255),
                    Color.fromARGB(180, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0, 0.05, 0.6, 1],
                ).createShader(bounds),
                child: Image(
                  image: cityImage.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Text(
                "Today in $location, it is $temperature°C",
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            const Align(
              alignment: Alignment(0.9, 0),
              child: PhysicalModel(
                color: Colors.black,
                shape: BoxShape.circle,
                elevation: 8.0,
                child: CircleAvatar(
                  radius: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
