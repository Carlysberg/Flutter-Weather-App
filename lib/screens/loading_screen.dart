import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
const API_KEY = '1d85d42390f13a6ddd788f49b50799f3';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation()async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData()async{
    var url = Uri.parse(
        //'https://api.openweathermap.org/data/2.5/weather?lat=${Location().latitude}&lon=${Location().longitude}&appid=${API_KEY}'
        'http://api.weatherapi.com/v1/current.json?key=<557e792585b448e2a7a131231232305>&q=London'
    );
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  }


  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
