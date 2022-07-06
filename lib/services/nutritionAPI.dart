import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:meteo_api/models/forecastWeatherModel.dart';
import '../models/ingredientModel.dart';

final String ID = '1e895a3d';
final String API_KEY = "e25b93d0d5ab2f5e12e2efbac2ee97ed";

Future getRecipesData() async {
  var url =
      Uri.parse(''); //https://developer.edamam.com/edamam-docs-nutrition-api

  var res = await http.get(url);

  if (res.statusCode == 200) {
    print(url);
    var data = jsonDecode(res.body);
    print(data);
    return data;
    // var parseJson = Meteo.fromJson(data);
    // return parseJson;
  }
  return Exception("Error call API : ${res.statusCode}");
}
