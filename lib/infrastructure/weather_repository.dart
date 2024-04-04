import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherblocapp/domain/failure/main_failure.dart';
import 'package:weatherblocapp/domain/i_weather_repo.dart';
import 'package:weatherblocapp/domain/model/weather_model.dart';
import 'package:timezone/timezone.dart' as tz;

@LazySingleton(as: IWeatherRepo)
class WeatherRepository implements IWeatherRepo{
  @override
  Future<Either<MainFailure, WeatherAppModel>> getWeatherData(String city) async{

    
    final defaultUrl = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=ad93ec9d6bcf5c35eec3b3f597b82047&units=metric";
   try{
     final Response response = await http.get(Uri.parse(defaultUrl));
     if(response.statusCode == 200 || response.statusCode == 201){

       final data = jsonDecode(response.body);
       print("next imp");
       print(data);

       return Right(WeatherAppModel.fromJson(data));


     }
     else{
       return Left(MainFailure.serverFailure());
     }
   }
   catch(e){
     print(e.toString());
     return Left(MainFailure.clientFailure());
   }
  }

  @override
  Future<Either<MainFailure, WeatherAppModel>> getWeatherDatabyZip( String countrycode, String zip) async{
    final defaultUrl = "https://api.openweathermap.org/data/2.5/weather?zip=$zip,$countrycode&appid=ad93ec9d6bcf5c35eec3b3f597b82047&units=metric";
    try{
      final Response response = await http.get(Uri.parse(defaultUrl));
      if(response.statusCode == 200 || response.statusCode == 201){

        final data = jsonDecode(response.body);

        return Right(WeatherAppModel.fromJson(data));


      }
      else{
        return Left(MainFailure.serverFailure());
      }
    }
    catch(e){
      print(e.toString());
      return Left(MainFailure.clientFailure());
    }

  }

}