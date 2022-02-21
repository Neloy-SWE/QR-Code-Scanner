import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  final Color backColor;
  final String title;
  final Color fontColor;

  const MyAppBar({
    Key? key,
    required this.backColor,
    required this.title,
    required this.fontColor,
  }) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: MyColors.primaryColor, //change your color here
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      backgroundColor: widget.backColor,
      elevation: 0,
      title: Text(
        widget.title,
        style: MyTextStyle.mediumStyle(fontColor: widget.fontColor),
      ),
      centerTitle: true,
    );
  }
}
