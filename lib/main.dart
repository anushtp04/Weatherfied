import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherblocapp/application/weather_bloc/weather_bloc.dart';
import 'package:weatherblocapp/domain/core/di/injectable.dart';
import 'package:weatherblocapp/presentation/home_page.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<WeatherBloc>()..add(WeatherEvent.getWeatherData()))
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.blue
        ),
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: HomePage(),
      ),
    );
  }
}




