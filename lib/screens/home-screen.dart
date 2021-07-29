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

  @override
  Widget build(BuildContext context) {
    void _search() async {
      final response = await _dataService.getWeather(_cityTextController.text);
      print(response.cityName);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: SizedBox(
                width: 150,
                child: TextField(
                  controller: _cityTextController,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ElevatedButton(onPressed: _search, child: Text("Search"))
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
