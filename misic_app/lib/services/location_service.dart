import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart'; // Using geolocator for coordinate retrieval

class LocationService {
  final GeocodingPlatform _geocodingPlatform = GeocodingPlatform.instance;

  Future<Placemark?> getCurrentAddress() async {
    final permissionStatus = await Permission.location.request();
    if (permissionStatus == PermissionStatus.granted) {
      try {
        // Use geolocator for coordinate retrieval
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        // Use geocoding for address lookup
        final placemarks = await _geocodingPlatform.placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );

        return placemarks.first;
      } catch (e) {
        print('Error obtaining address: $e');
        return null;
      }
    } else {
      // Handle permission denial
      return null;
    }
  }
}
