import 'package:booking_app/pages/login.dart';
import 'package:booking_app/pages/sign_up.dart';
import 'package:booking_app/pages/verifiying_ohone_email.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'package:booking_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    enabled: true,
      builder:(_)=> const BookingApp()));
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
              )),
          colorScheme:const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.red,
            onPrimary: Colors.blue,
            secondary: Colors.grey,
            onSecondary: Colors.white70,
            error: Colors.deepPurple,
            onError: Colors.purpleAccent,
            background: Colors.white,
            onBackground: Colors.yellow,
            surface: Colors.pink,
            onSurface: Colors.black,
          )),
      debugShowCheckedModeBanner: false,
      home: const VerifyingPhoneAndAddress(),
    );
  }
}
