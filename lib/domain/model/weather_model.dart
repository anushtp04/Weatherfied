import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

// @freezed
// class WeatherAppModel with _$WeatherAppModel {
//   const factory WeatherAppModel({
//     required Coord coord,
//     required List<Weather> weather,
//     required String base,
//     required Main main,
//     required Wind wind,
//     required int visibility,
//     required Clouds clouds,
//     required int dt,
//     required Sys sys,
//     required int timezone,
//     required int id,
//     required String name,
//     required int cod,
//   }) = _WeatherAppModel;
//
//
//
//   factory WeatherAppModel.fromJson(Map<String, dynamic> json) =>
//       _$WeatherAppModelFromJson(json);
// }
//
// @freezed
// class Coord with _$Coord {
//   const factory Coord({
//     required double lon,
//     required double lat,
//   }) = _Coord;
//   factory Coord.fromJson(Map<String, dynamic> json) =>
//       _$CoordFromJson(json);
// }
// @freezed
// class Wind with _$Wind {
//   const factory Wind({
//     required double speed,
//     required int deg,
//     required double gust,
//   }) = _Wind;
//   factory Wind.fromJson(Map<String, dynamic> json) =>
//       _$WindFromJson(json);
// }
//
//
// @freezed
// class Clouds with _$Clouds {
//   const factory Clouds({
//     required int all,
//   }) = _Clouds;
//   factory Clouds.fromJson(Map<String, dynamic> json) =>
//       _$CloudsFromJson(json);
// }
//
//
// @freezed
// class Main with _$Main {
//   const factory Main({
//     required double temp,
//     required double feelsLike,
//     required double tempMin,
//     required double tempMax,
//     required int pressure,
//     required int humidity,
//     required int seaLevel,
//     required int grndLevel,
//   }) = _Main;
//
//   factory Main.fromJson(Map<String, dynamic> json) =>
//       _$MainFromJson(json);
// }
//
// @freezed
// class Sys with _$Sys {
//   const factory Sys({
//     required String country,
//     required int sunrise,
//     required int sunset,
//   }) = _Sys;
//   factory Sys.fromJson(Map<String, dynamic> json) =>
//       _$SysFromJson(json);
// }
//
// @freezed
// class Weather with _$Weather {
//   const factory Weather({
//     required int id,
//     required String main,
//     required String description,
//     required String icon,
//   }) = _Weather;
//   factory Weather.fromJson(Map<String, dynamic> json) =>
//       _$WeatherFromJson(json);
// }
@freezed
abstract class WeatherAppModel with _$WeatherAppModel {
  const factory WeatherAppModel({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherAppModel;

  factory WeatherAppModel.fromJson(Map<String, dynamic> json) => _$WeatherAppModelFromJson(json);
}

@JsonSerializable()
class Coord {
  final double? lon;
  final double? lat;

  Coord({
     this.lon,
     this.lat,
  });

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class Weather {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  Weather({
     this.id,
     this.main,
     this.description,
     this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Main {
  final double? temp;
  final double? feels_like;
  final double? temp_min;
  final double? temp_max;
  final int? pressure;
  final int? humidity;
  final int? sea_level;
  final int? grnd_level;

  Main({
     this.temp,
     this.feels_like,
     this.temp_min,
     this.temp_max,
     this.pressure,
     this.humidity,
     this.sea_level,
     this.grnd_level,
  });

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
  Map<String, dynamic> toJson() => _$MainToJson(this);
}

@JsonSerializable()
class Wind {
  final double? speed;
  final int? deg;
  final double? gust;

  Wind({
     this.speed,
     this.deg,
     this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}

@JsonSerializable()
class Clouds {
  final int? all;

  Clouds({
    this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}

@JsonSerializable()
class Sys {
  final String? country;
  final int? sunrise;
  final int? sunset;

  Sys({
    this.country,
    this.sunrise,
    this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}
