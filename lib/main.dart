import 'package:booking_app/pages/loginAndRegistration/login.dart';
import 'package:booking_app/pages/loginAndRegistration/registrationConfirmed.dart';
import 'package:booking_app/pages/loginAndRegistration/sign_up.dart';
import 'package:booking_app/pages/loginAndRegistration/verifiying_phone_email.dart';
import 'package:booking_app/widgets/theme.dart';
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
  runApp(
    DevicePreview(
      enabled: true,
      builder: (_) => const BookingApp(),
    ),
  );
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: ThemeData(
          appBarTheme: CustomTheme.appBarTheme,
          colorScheme: CustomTheme.colorScheme
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
