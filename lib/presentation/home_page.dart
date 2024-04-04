import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/weather_bloc/weather_bloc.dart';
import '../core/apptext.dart';
import '../core/custom_divider_page.dart';
import '../core/image_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.getWeatherData());
    // });

    final size = MediaQuery.of(context).size;

    var changedCityName;

    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        ///date converter
        int currentTimestamp = state.weatherAppModel?.dt ?? 0;
        int sunriseTimestamp = state.weatherAppModel?.sys?.sunrise ?? 0;
        int sunsetTimestamp = state.weatherAppModel?.sys?.sunset ?? 0;

        DateTime currentDateTime =
            DateTime.fromMillisecondsSinceEpoch(currentTimestamp * 1000);
        DateTime sunriseDateTime =
            DateTime.fromMillisecondsSinceEpoch(sunriseTimestamp * 1000);
        DateTime sunsetDateTime =
            DateTime.fromMillisecondsSinceEpoch(sunsetTimestamp * 1000);

        final currentHour = currentDateTime.hour;
        String formattedSunrise = DateFormat('hh:mm a').format(sunriseDateTime);
        String formattedSunset = DateFormat('hh:mm a').format(sunsetDateTime);

        DateTime date =
            DateTime.fromMillisecondsSinceEpoch(currentTimestamp * 1000);
        var fullDate = DateFormat('EEEE, MMMM d, y').format(date);

        ///

        return state.isLoading
            ? Scaffold(
                body: Center(
                child: CircularProgressIndicator(),
              ))
            : Scaffold(
                resizeToAvoidBottomInset: false,
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(data: "${state.currentCity}", size: 20),
                          AppText(
                              data: currentHour < 12 && currentHour >= 5
                                  ? "Good Morning"
                                  : currentHour >= 12 && currentHour < 17
                                      ? " Good afternoon"
                                      : currentHour >= 17 && currentHour < 21
                                          ? "Good Evening"
                                          : "Good night",
                              color: Colors.white,
                              fw: FontWeight.w400,
                              size: 14)
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    IconButton(onPressed:() {
                      showModalBottomSheet(

                        backgroundColor: Colors.transparent,context: context, builder: (context) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 50,left: 50,right: 50),
                          padding: EdgeInsets.only(left: 20,right: 20),
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CSCPicker(

                                onCountryChanged: (country) {
                                  print('Selected country: $country');
                                },
                                onStateChanged: (state) {
                                 print('Selected state: $state');
                                },
                                onCityChanged: (city) {
                                  changedCityName = city;
                                },
                                flagState: CountryFlag.DISABLE,
                                layout: Layout.vertical,

                              ),
                              SizedBox(height: 10,),
                              ElevatedButton(onPressed: () {
                                context.read<WeatherBloc>().add(WeatherEvent.getDataClicked(city: changedCityName ?? state.weatherAppModel?.name));
                                Navigator.pop(context);
                              }, child: Text("Press here"))
                            ],
                          ),
                        );
                      },);
                    },  icon: Icon(Icons.search,size: 30,color: Colors.white,))
                  ],
                ),
                body: Container(
                  padding:
                      EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
                  height: size.height,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        data: "${state.weatherAppModel?.name}",
                        size: 50,
                        fw: FontWeight.w500,
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(imagePath[
                                    state.weatherAppModel?.weather![0].main ??
                                        "Clear"]))),
                      ),
                            SizedBox(height: 19,),

                            AppText(
                              data:
                                  "${state.weatherAppModel?.main?.temp?.toStringAsFixed(0)}\u00B0C",
                              size: 90,
                              fw: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AppText(
                              data:
                                  "${state.weatherAppModel?.weather![0].main}",
                              size: 30,
                              fw: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AppText(
                              data: "$fullDate",
                              size: 20,
                              fw: FontWeight.w500,
                            ),
                      SizedBox(height: 50,),

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(0.4)),
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/temperature-high.png',
                                      height: 40,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          data: "Temp Max",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        AppText(
                                          data:
                                              "${state.weatherAppModel?.main?.temp_max?.toStringAsFixed(0)}\u00B0C",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: 50,),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/temperature-low.png',
                                      height: 40,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          data: "Temp Min",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        AppText(
                                          data:
                                              "${state.weatherAppModel?.main?.temp_min?.toStringAsFixed(0)}\u00B0C",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 10),
                              child: CustomDivider(
                                startIndent: 20,
                                endIndent: 20,
                                color: Colors.white,
                                thickness: 2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/sun.png',
                                      height: 40,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          data: "Sunrise",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        AppText(
                                          data: "$formattedSunrise",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/moon.png',
                                      height: 35,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          data: "Sunset",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        AppText(
                                          data: "$formattedSunset",
                                          color: Colors.white,
                                          size: 14,
                                          fw: FontWeight.w600,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
