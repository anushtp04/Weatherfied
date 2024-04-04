import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weatherblocapp/domain/model/weather_model.dart';
import 'package:weatherblocapp/infrastructure/current_location.dart';

import '../../domain/failure/main_failure.dart';
import '../../domain/i_weather_repo.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepo _weatherRepo;

  WeatherBloc(this._weatherRepo) : super(WeatherState.initial()) {
    on<_GetWeatherData>((event, emit)async {
      emit(WeatherState(isLoading: true,  downloadFailureOptions: None(),currentCity: ""));

      final currentCity = await CurrentLocationService().determinePosition();
      print(currentCity);

      final Either<MainFailure, WeatherAppModel> downloadOption = await _weatherRepo.getWeatherDatabyZip("${currentCity?.isoCountryCode}","${currentCity?.postalCode}");

      emit(
        downloadOption.fold(
              (failure) => state.copyWith(
            isLoading: false,
                downloadFailureOptions:  Some(
                  Left(failure)
                )

          ),
              (success) => state.copyWith(
              isLoading: false,
              downloadFailureOptions: Some(Right(success)),
              weatherAppModel: success,
                currentCity: success.name ?? "N/A"
              ),
        ),
      );


    });

    on<_GetDataClicked>((event, emit)async {
      emit(WeatherState(isLoading: true,  downloadFailureOptions: None(),currentCity: ""));
      final currentCity = await CurrentLocationService().determinePosition();

      final Either<MainFailure, WeatherAppModel> downloadOption = await _weatherRepo.getWeatherData(event.city);

      emit(
        downloadOption.fold(
              (failure) => state.copyWith(
            isLoading: false,
                downloadFailureOptions:  Some(
                  Left(failure)
                )

          ),
              (success) => state.copyWith(
              isLoading: false,
              downloadFailureOptions: Some(Right(success)),
              weatherAppModel: success,
                currentCity: currentCity!.locality ?? "kannur"
              ),
        ),
      );


    });
  }
}
