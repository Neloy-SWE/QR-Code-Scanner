import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/screens/create_code_section/create_code.dart';

import '../../components/custom_text_style/my_text_style_class.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryColor,
      appBar: const MyAppBar(
        backColor: MyColors.secondaryColor,
        title: Texts.qrCodeScanner,
        fontColor: MyColors.primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Icon(
              FontAwesomeIcons.qrcode,
              size: 100,
              color: MyColors.primaryColor,
            ),
            const SizedBox(height: 120),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.85,
              child: MaterialButton(
                onPressed: () {},
                color: MyColors.primaryColor,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
                child: Text(
                  Texts.scanCode,
                  style: MyTextStyle.regularStyle(
                      fontColor: MyColors.secondaryColor),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.85,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (builder) => const CreateCode(),
                    ),
                  );
                },
                color: MyColors.secondaryColor,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  side: BorderSide(width: 1, color: MyColors.primaryColor),
                ),
                child: Text(
                  Texts.createCode,
                  style: MyTextStyle.regularStyle(
                      fontColor: MyColors.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
