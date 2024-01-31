import 'package:flutter/material.dart';

void main() {
  runApp(CropManagementApp());
}

class CropManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crop Management App',
      home: HomePage(),
      routes: {
        '/under_dev': (context) => UnderDevPage(),
        '/crop_info': (context) => CropInfoPage(),
        '/crop_monitoring': (context) => CropMonitoringPage(),
        '/recommendation_system': (context) => RecommendationSystemPage(),
        '/weather_forecasting': (context) => WeatherForecastingPage(),
        '/digital_marketplace': (context) => DigitalMarketplacePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> services = [
    'Crop Information Library',
    'Crop Monitoring',
    'Recommendation System',
    'Weather Forecasting',
    'Digital Marketplace',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Management App'),
        backgroundColor: const Color.fromARGB(255, 3, 122, 65),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(services[index]),
              onTap: () {
                Navigator.pop(context);
                switch (index) {
                  case 0: // Crop Information Library
                    Navigator.pushNamed(context, '/crop_info');
                    break;
                  case 1: // Crop Monitoring
                    Navigator.pushNamed(context, '/crop_monitoring');
                    break;
                  case 2: // Recommendation System
                    Navigator.pushNamed(context, '/recommendation_system');
                    break;
                  case 3: // Weather Forecasting
                    Navigator.pushNamed(context, '/weather_forecasting');
                    break;
                  case 4: // Digital Marketplace
                    Navigator.pushNamed(context, '/digital_marketplace');
                    break;
                }
              },
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Crop Management App!',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Text('Our services include:'),
            Expanded(
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(services[index]),
                    onTap: () {
                      switch (index) {
                        case 0: // Crop Information Library
                          Navigator.pushNamed(context, '/crop_info');
                          break;
                        case 1: // Crop Monitoring
                          Navigator.pushNamed(context, '/crop_monitoring');
                          break;
                        case 2: // Recommendation System
                          Navigator.pushNamed(
                              context, '/recommendation_system');
                          break;
                        case 3: // Weather Forecasting
                          Navigator.pushNamed(context, '/weather_forecasting');
                          break;
                        case 4: // Digital Marketplace
                          Navigator.pushNamed(context, '/digital_marketplace');
                          break;
                      }
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/under_dev');
              },
              child: const Text('continue'),
            ),
          ],
        ),
      ),
    );
  }
}

class UnderDevPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Under Development'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'We apologize, but this Application is still under development.',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class CropInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Information Library'),
      ),
      body: const Center(
        child: Text(
          'This page shows Crop Information Library to the farmers',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class CropMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Monitoring'),
      ),
      body: const Center(
        child: Text(
          'This page will show crop monitoring to farmers',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class RecommendationSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendation System'),
      ),
      body: const Center(
        child: Text(
          'This page shows recommendations to farmers in order to increase their crop yields',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class WeatherForecastingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecasting'),
      ),
      body: const Center(
        child: Text(
          'This pages shows Weather Forecasting for the farmers in order to improve their crop yields',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class DigitalMarketplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Marketplace'),
      ),
      body: const Center(
        child: Text(
          'This page provide information about Digital Marketplace for the farmers where to sell their crop products',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
