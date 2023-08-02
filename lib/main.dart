import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(SensorApp());
}

class SensorApp extends StatefulWidget {
  @override
  _SensorAppState createState() => _SensorAppState();
}

class _SensorAppState extends State<SensorApp> {
  double temperature = 0;
  double humidity = 0;

  void fetchSensorData() async {
    final response = await http.get(Uri.parse('http://192.168.29.80:5000/sensor_data'));
    if (response.statusCode == 200) {
      setState(() {
        final data = json.decode(response.body);
        temperature = data['temperature'];
        humidity = data['humidity'];
      });
    } else {
      setState(() {
        temperature = 0;
        humidity = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DHT11 Sensor Data'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Temperature: $temperature°C'),
              Text('Humidity: $humidity%'),
              ElevatedButton(
                onPressed: fetchSensorData,
                child: Text('Refresh'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
