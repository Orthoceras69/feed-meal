import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
// import 'package:meteo_api/models/forecastWeatherModel.dart';
import '../models/recipesModel.dart';

final String ID = '479888a3';
// final String API_KEY_RECIPES = "7f3e7ae348668aaac4948d85e9c65ef0";

Future getRecipesData() async {
  print("${dotenv.env['API_KEY_RECIPES']}");
  var url = Uri.parse(
      'https://api.edamam.com/api/recipes/v2?type=public&q=poulet&app_id=${ID}&app_key=${dotenv.env['API_KEY_RECIPES']}');
  // 'https://api.edamam.com/api/recipes/v2?type=public&q=poulet&app_id=${ID}&app_key=${API_KEY_RECIPES}');

  var res = await http.get(url);
  print(url);
  if (res.statusCode == 200) {
    print(url);
    var data = jsonDecode(res.body);
    print(data);
    var parseJson = Recipes.fromJson(data);
    return parseJson;
  }
  return Exception("Error call API : ${res.statusCode}");
}
