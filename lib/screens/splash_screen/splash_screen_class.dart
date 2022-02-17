import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';
import 'package:qrcode_scanner/utils/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: MyColors.backColor),
        backgroundColor: MyColors.backColor,
        elevation: 0,
        //title: Text(Texts.qrCodeScanner, style: MyTextStyle.mediumStyle(),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.qrcode,
              size: 100,
              color: MyColors.primaryColor,
            ),
            const SizedBox(height: 50),
            Text(
              Texts.qrCodeScanner,
              style: MyTextStyle.mediumStyle(fontSize: 45),
            ),
            const SizedBox(height: 35),
            CircularProgressIndicator(
              color: MyColors.primaryColor,
              strokeWidth: 20,
            ),
          ],
        ),
      ),
    );
  }
}
