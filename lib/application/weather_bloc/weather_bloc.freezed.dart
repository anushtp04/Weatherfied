// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherData,
    required TResult Function(String city) getDataClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherData,
    TResult? Function(String city)? getDataClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherData,
    TResult Function(String city)? getDataClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherData value) getWeatherData,
    required TResult Function(_GetDataClicked value) getDataClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherData value)? getWeatherData,
    TResult? Function(_GetDataClicked value)? getDataClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherData value)? getWeatherData,
    TResult Function(_GetDataClicked value)? getDataClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherDataImplCopyWith<$Res> {
  factory _$$GetWeatherDataImplCopyWith(_$GetWeatherDataImpl value,
          $Res Function(_$GetWeatherDataImpl) then) =
      __$$GetWeatherDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherDataImpl>
    implements _$$GetWeatherDataImplCopyWith<$Res> {
  __$$GetWeatherDataImplCopyWithImpl(
      _$GetWeatherDataImpl _value, $Res Function(_$GetWeatherDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherDataImpl implements _GetWeatherData {
  const _$GetWeatherDataImpl();

  @override
  String toString() {
    return 'WeatherEvent.getWeatherData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherData,
    required TResult Function(String city) getDataClicked,
  }) {
    return getWeatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherData,
    TResult? Function(String city)? getDataClicked,
  }) {
    return getWeatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherData,
    TResult Function(String city)? getDataClicked,
    required TResult orElse(),
  }) {
    if (getWeatherData != null) {
      return getWeatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherData value) getWeatherData,
    required TResult Function(_GetDataClicked value) getDataClicked,
  }) {
    return getWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherData value)? getWeatherData,
    TResult? Function(_GetDataClicked value)? getDataClicked,
  }) {
    return getWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherData value)? getWeatherData,
    TResult Function(_GetDataClicked value)? getDataClicked,
    required TResult orElse(),
  }) {
    if (getWeatherData != null) {
      return getWeatherData(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherData implements WeatherEvent {
  const factory _GetWeatherData() = _$GetWeatherDataImpl;
}

/// @nodoc
abstract class _$$GetDataClickedImplCopyWith<$Res> {
  factory _$$GetDataClickedImplCopyWith(_$GetDataClickedImpl value,
          $Res Function(_$GetDataClickedImpl) then) =
      __$$GetDataClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$GetDataClickedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetDataClickedImpl>
    implements _$$GetDataClickedImplCopyWith<$Res> {
  __$$GetDataClickedImplCopyWithImpl(
      _$GetDataClickedImpl _value, $Res Function(_$GetDataClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$GetDataClickedImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDataClickedImpl implements _GetDataClicked {
  const _$GetDataClickedImpl({required this.city});

  @override
  final String city;

  @override
  String toString() {
    return 'WeatherEvent.getDataClicked(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataClickedImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataClickedImplCopyWith<_$GetDataClickedImpl> get copyWith =>
      __$$GetDataClickedImplCopyWithImpl<_$GetDataClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherData,
    required TResult Function(String city) getDataClicked,
  }) {
    return getDataClicked(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherData,
    TResult? Function(String city)? getDataClicked,
  }) {
    return getDataClicked?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherData,
    TResult Function(String city)? getDataClicked,
    required TResult orElse(),
  }) {
    if (getDataClicked != null) {
      return getDataClicked(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherData value) getWeatherData,
    required TResult Function(_GetDataClicked value) getDataClicked,
  }) {
    return getDataClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherData value)? getWeatherData,
    TResult? Function(_GetDataClicked value)? getDataClicked,
  }) {
    return getDataClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherData value)? getWeatherData,
    TResult Function(_GetDataClicked value)? getDataClicked,
    required TResult orElse(),
  }) {
    if (getDataClicked != null) {
      return getDataClicked(this);
    }
    return orElse();
  }
}

abstract class _GetDataClicked implements WeatherEvent {
  const factory _GetDataClicked({required final String city}) =
      _$GetDataClickedImpl;

  String get city;
  @JsonKey(ignore: true)
  _$$GetDataClickedImplCopyWith<_$GetDataClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  WeatherAppModel? get weatherAppModel => throw _privateConstructorUsedError;
  String get currentCity => throw _privateConstructorUsedError;
  Option<Either<MainFailure, WeatherAppModel>> get downloadFailureOptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool isLoading,
      WeatherAppModel? weatherAppModel,
      String currentCity,
      Option<Either<MainFailure, WeatherAppModel>> downloadFailureOptions});

  $WeatherAppModelCopyWith<$Res>? get weatherAppModel;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherAppModel = freezed,
    Object? currentCity = null,
    Object? downloadFailureOptions = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherAppModel: freezed == weatherAppModel
          ? _value.weatherAppModel
          : weatherAppModel // ignore: cast_nullable_to_non_nullable
              as WeatherAppModel?,
      currentCity: null == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String,
      downloadFailureOptions: null == downloadFailureOptions
          ? _value.downloadFailureOptions
          : downloadFailureOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, WeatherAppModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherAppModelCopyWith<$Res>? get weatherAppModel {
    if (_value.weatherAppModel == null) {
      return null;
    }

    return $WeatherAppModelCopyWith<$Res>(_value.weatherAppModel!, (value) {
      return _then(_value.copyWith(weatherAppModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      WeatherAppModel? weatherAppModel,
      String currentCity,
      Option<Either<MainFailure, WeatherAppModel>> downloadFailureOptions});

  @override
  $WeatherAppModelCopyWith<$Res>? get weatherAppModel;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherAppModel = freezed,
    Object? currentCity = null,
    Object? downloadFailureOptions = null,
  }) {
    return _then(_$WeatherStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherAppModel: freezed == weatherAppModel
          ? _value.weatherAppModel
          : weatherAppModel // ignore: cast_nullable_to_non_nullable
              as WeatherAppModel?,
      currentCity: null == currentCity
          ? _value.currentCity
          : currentCity // ignore: cast_nullable_to_non_nullable
              as String,
      downloadFailureOptions: null == downloadFailureOptions
          ? _value.downloadFailureOptions
          : downloadFailureOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, WeatherAppModel>>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {required this.isLoading,
      this.weatherAppModel,
      required this.currentCity,
      required this.downloadFailureOptions});

  @override
  final bool isLoading;
  @override
  final WeatherAppModel? weatherAppModel;
  @override
  final String currentCity;
  @override
  final Option<Either<MainFailure, WeatherAppModel>> downloadFailureOptions;

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, weatherAppModel: $weatherAppModel, currentCity: $currentCity, downloadFailureOptions: $downloadFailureOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.weatherAppModel, weatherAppModel) ||
                other.weatherAppModel == weatherAppModel) &&
            (identical(other.currentCity, currentCity) ||
                other.currentCity == currentCity) &&
            (identical(other.downloadFailureOptions, downloadFailureOptions) ||
                other.downloadFailureOptions == downloadFailureOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, weatherAppModel,
      currentCity, downloadFailureOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required final bool isLoading,
      final WeatherAppModel? weatherAppModel,
      required final String currentCity,
      required final Option<Either<MainFailure, WeatherAppModel>>
          downloadFailureOptions}) = _$WeatherStateImpl;

  @override
  bool get isLoading;
  @override
  WeatherAppModel? get weatherAppModel;
  @override
  String get currentCity;
  @override
  Option<Either<MainFailure, WeatherAppModel>> get downloadFailureOptions;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
