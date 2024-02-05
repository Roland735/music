import 'package:flutter/material.dart';
import 'package:music_app/widgets/home_page.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Request location permission (adjust logic as needed)
  final status = await Permission.location.request();
  if (status != PermissionStatus.granted) {
    // Handle permission denial gracefully
    print('Location permission denied. App functionality may be limited.');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
