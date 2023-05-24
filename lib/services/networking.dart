import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  final String api;
  NetworkHelper(this.api);

  Future getData()async{
    var url = Uri.parse(api);
    var response = await http.get(url);

    if(response.statusCode == 200){
      var Data = response.body;
      var decodedData = jsonDecode(Data);
      return decodedData;
    }else{
      print(response.statusCode);
    }
  }
}