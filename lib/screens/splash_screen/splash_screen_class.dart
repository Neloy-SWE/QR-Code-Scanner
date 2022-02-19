import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (builder)=> const Options()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: MyColors.primaryColor),
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        //title: Text(Texts.qrCodeScanner, style: MyTextStyle.mediumStyle(),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.qrcode,
                  size: 30,
                  color: MyColors.backColor,
                ),
                const SizedBox(width: 10),
                Text(
                  Texts.qrCodeScanner,
                  style: MyTextStyle.mediumStyle(fontSize: 25, fontColor: MyColors.backColor),
                ),

              ],
            ),
            const SizedBox(height: 50),


            const CircularProgressIndicator(
              color: MyColors.backColor,
              strokeWidth: 20,
            ),
          ],
        ),
      ),
    );
  }
}
