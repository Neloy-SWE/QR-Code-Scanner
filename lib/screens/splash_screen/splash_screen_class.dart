import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/screens/option_section/option_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';
import 'package:qrcode_scanner/utils/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (builder) => const Options()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: const MyAppBar(
        backColor: MyColors.primaryColor,
        title: Texts.welcome,
        fontColor: MyColors.secondaryColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // simple icon and text for splash screen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.qrcode,
                  size: 30,
                  color: MyColors.secondaryColor,
                ),
                const SizedBox(width: 10),
                Text(
                  Texts.qrCodeScanner,
                  style: MyTextStyle.mediumStyle(
                      fontSize: 25, fontColor: MyColors.secondaryColor),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // loader
            const CircularProgressIndicator(
              color: MyColors.secondaryColor,
              strokeWidth: 20,
            ),
          ],
        ),
      ),
    );
  }
}
