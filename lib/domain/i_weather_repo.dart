import 'package:dartz/dartz.dart';
import 'package:weatherblocapp/domain/model/weather_model.dart';

import 'failure/main_failure.dart';

abstract class IWeatherRepo {
  Future<Either<MainFailure, WeatherAppModel>> getWeatherData(String city);
  Future<Either<MainFailure, WeatherAppModel>> getWeatherDatabyZip(String countrycode, String zip);
}