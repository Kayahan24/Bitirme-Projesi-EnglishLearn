import 'package:bitirme_english/configs/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: mainGradient()),
      child: Image.asset(
        "assets/images/app_splash_logo.png",
        width: 200,
        height: 200,
      ),
    ));
  }
}
