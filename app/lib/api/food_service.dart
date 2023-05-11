import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app/models/schedule/singleday_food_model.dart';
import 'package:app/api/url_mapping.dart';

class FoodService {
  static Future<OneDayFood> getOneDayFood(int year, int month, int day) async{
    String URL = '${url}kindergarten/food?year=$year&month=$month&day=$day';
    try{
      final response = await http.get(Uri.parse(URL));
      if(response.statusCode == 200){
        final OneDayFood dayFood = sigledayFoodFromJson(utf8.decode(response.bodyBytes)).oneDayFood;
        return dayFood;
      }else {
        print('$URL 오늘의 식단 Error 발생 ');
        OneDayFood tmp = OneDayFood(foodSeq: 1, rice: "", soup: "", dish1: "", dish2: "", dish3: "", morningSnack1: "", morningSnack2: "", afternoonSnack1: "", afternoonSnack2: "");
        return tmp;
      }
    }catch(e){
      print(e);
      OneDayFood tmp = OneDayFood(foodSeq: 1, rice: "", soup: "", dish1: "", dish2: "", dish3: "", morningSnack1: "", morningSnack2: "", afternoonSnack1: "", afternoonSnack2: "");
      return tmp;
    }
  }
}