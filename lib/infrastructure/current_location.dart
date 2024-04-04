import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'location_service.dart';

class CurrentLocationService{
  Position? currentPosition;
  final LocationService locationService = LocationService();
  Placemark? currentLocationName;

  Future<Placemark?> determinePosition() async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled){
      currentPosition = null;
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied){
        currentPosition = null;
      }

    }
    if(permission == LocationPermission.deniedForever){
      currentPosition = null;
    }
    currentPosition = await Geolocator.getCurrentPosition();
    print(currentPosition);

    currentLocationName = await locationService.getLocationName(currentPosition);
    print(currentLocationName);

    return currentLocationName;

  }

}