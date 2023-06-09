import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzle/configs/themes/app_colors.dart';
import 'package:quizzle/screens/home/home_screen.dart';
import 'package:quizzle/screens/home/main_screen.dart';
import 'package:quizzle/widgets/common/circle_button.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);
  static const String routeName = '/introduction';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: EasySeparatedColumn(
            separatorBuilder: (context, index) => const SizedBox(
              height: 40,
            ),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.book_outlined,
                size: 80,
                color: kOnSurfaceTextColor,
              ),
              const Text(
                'Welcome to our English language proficiency app! We provide comprehensive resources and exercises to help you prepare for English language exams.Our user-friendly interface and personalized study plans make learning enjoyable and effective.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: kOnSurfaceTextColor,
                    fontWeight: FontWeight.bold),
              ),
              CircularButton(
                  onTap: () => Get.offAndToNamed(MainScreen.routeName),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
