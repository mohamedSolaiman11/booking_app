import 'package:flutter/material.dart';
import 'package:gradients/gradients.dart';

class ConstText{
  static const String verifyText =
      "Vänligen verifiera ditt telefonnummer och din e-postadress genom att ange verifieringsko derna som skickats till dig.";
  static const String regConfirmText = "Tack för att du registrerat dig på BookMe. Nu kan du boka tjänster och kontakta företag.";
  static const String homeViewHeaderUrl = "assets/images/home_header.webp";

 static const bottomNavigationGradient = LinearGradientPainter(
    colorSpace: ColorSpace.hsi,
    colors:  <Color>[Colors.grey, Color(0xffB8B8BE),Color(0xffB8B8BE),Color(0xffB8B8BE),Colors.grey]
  );
}