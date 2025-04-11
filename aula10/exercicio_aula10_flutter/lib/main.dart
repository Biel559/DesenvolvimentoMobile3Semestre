import 'package:flutter/material.dart';

void main() {
  runApp(const SensorApp());
}

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitor de Sensores',
      home: const SensorHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SensorHomePage extends StatelessWidget {
  const SensorHomePage({super.key});

  Widget buildSensorCard(String title, String value) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: const Icon(Icons.thermostat, color: Colors.green),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitor de Sensores'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSensorCard("Temperatura do Ar", "0.0 °C"),
          buildSensorCard("Umidade do Ar", "0.0 %"),
          buildSensorCard("Temperatura do Solo", "0.0 °C"),
          buildSensorCard("Umidade do Solo", "0.0 %"),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                'Atualizar Dados',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
