part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeatherData() = _GetWeatherData;
  const factory WeatherEvent.getDataClicked({
    required String city
}) = _GetDataClicked;
}
