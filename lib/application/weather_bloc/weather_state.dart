part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoading,
     WeatherAppModel? weatherAppModel,
    required String currentCity,
    required Option<Either<MainFailure, WeatherAppModel>> downloadFailureOptions,
    }) = _WeatherState;
  factory WeatherState.initial(){
    return WeatherState(isLoading: false,  downloadFailureOptions: None(),currentCity: "");
  }
}
