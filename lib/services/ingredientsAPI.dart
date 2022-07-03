import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:meteo_api/models/forecastWeatherModel.dart';
import '../models/ingredientModel.dart';

final String ID = 'fc4296b4';
final String API_KEY = "fea06ff0c205fa2dd6d1430db3bd9fa8";

Future getIngredientsData() async {
  var url = Uri.parse(
      'https://api.edamam.com/api/food-database/v2/parser?app_id=${ID}&app_key=${API_KEY}&ingr=tomato&nutrition-type=cooking&category=generic-foods');

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
