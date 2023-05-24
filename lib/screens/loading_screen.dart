import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
const API_KEY = '1d85d42390f13a6ddd788f49b50799f3';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  void getLocation()async{
    Location location = Location();
    await location.getCurrentLocation();
    longitude = location.longitude;
    latitude = location.latitude;
    print(latitude);
    print(longitude);
  }

  void getData()async{
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=${API_KEY}'
    );
    var response = await http.get(url);

    if(response.statusCode==200){

    var temperature = jsonDecode(response.body)['main']['temp'];
    var city = jsonDecode(response.body)['name'];
    var condition = jsonDecode(response.body)['weather'][0]['id'];
    print('temperature = $temperature');
    print('city = $city');
    print('condition = $condition');

    }else{
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();

  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(

    );
  }
}
