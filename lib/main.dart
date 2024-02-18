import 'package:booking_app/pages/login.dart';
import 'package:booking_app/pages/sign_up.dart';
import 'package:booking_app/pages/verifing_phone_email_page.dart';
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
    builder: (_)=>const BookingApp(),
    enabled: true,),);
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
            onSecondary: Colors.white,
            error: Colors.deepPurple,
            onError: Colors.purpleAccent,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.white,
            onSurface: Colors.black,
          ),
      ),
      debugShowCheckedModeBanner: false,
      home: const VerifyingPhoneAndAddress(),
    );
  }
}
