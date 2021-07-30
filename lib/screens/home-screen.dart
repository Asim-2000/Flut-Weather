import 'package:catalog_app/models/weather-model.dart';
import 'package:catalog_app/services/data-service.dart';
import 'package:catalog_app/widgets/my-drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();
  WeatherResponse _response;
  @override
  Widget build(BuildContext context) {
    void _search() async {
      final response = await _dataService.getWeather(_cityTextController.text);
      setState(() => _response = response);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_response != null)
                Column(
                  children: [
                    Image.network(_response.iconUrl),
                    Text(
                      '${_response.tempInfo.temp}°C',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(_response.weatherInfo.description)
                  ],
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter City", labelText: "City Name"),
                    controller: _cityTextController,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ElevatedButton(onPressed: _search, child: Text("Search"))
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
