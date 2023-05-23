import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:quizzle/configs/configs.dart';
import 'package:quizzle/controllers/controllers.dart';
import 'package:quizzle/widgets/widgets.dart';

import 'custom_drawer.dart';

class MainScreen extends GetView<MyDrawerController> {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = '/main';

  @override
  Widget build(BuildContext context) {
    QuizPaperController _quizePprContoller = Get.find();
    return Scaffold(
      body: GetBuilder<MyDrawerController>(
        builder: (_) => ZoomDrawer(
          controller: _.zoomDrawerController,
          borderRadius: 50.0,
          showShadow: true,
          angle: 0.0,
          style: DrawerStyle.DefaultStyle,
          menuScreen: const CustomDrawer(),
          backgroundColor: Colors.white.withOpacity(0.5),
          slideWidth: MediaQuery.of(context).size.width * 0.4,
          mainScreen: Container(
            decoration: BoxDecoration(gradient: mainGradient(context)),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(kMobileScreenPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: const Offset(-10, 0),
                          child: CircularButton(
                            child: const Icon(AppIcons.menuleft),
                            onTap: controller.toggleDrawer,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              const Icon(AppIcons.peace),
                              Builder(
                                builder: (_) {
                                  final AuthController _auth = Get.find();
                                  final user = _auth.getUser();
                                  String _label = '  Hello mate';
                                  if (user != null) {
                                    _label = '  Hello ${user.displayName}';
                                  }
                                  return Text(
                                    _label,
                                    style: kDetailsTS.copyWith(
                                      color: kOnSurfaceTextColor,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Welcome to Main Screen',
                          style: kHeaderTS,
                        ),
                        const SizedBox(height: 50),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.purple, width: 2.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              // Burada tıklanınca yönlendirilmek istenen sayfayı açabilirsiniz
                              Get.toNamed('/home');
                            },
                            child: ListTile(
                              leading: const Icon(Icons.card_giftcard),
                              title: const Text('Card 1'),
                              subtitle: const Text('Description for Card 1'),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.purple, width: 2.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              // Burada tıklanınca yönlendirilmek istenen sayfayı açabilirsiniz
                              Get.toNamed('/home');
                            },
                            child: ListTile(
                              leading: const Icon(Icons.card_giftcard),
                              title: const Text('Card 2'),
                              subtitle: const Text('Description for Card 2'),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(color: Colors.purple, width: 2.0),
                          ),
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              // Burada tıklanınca yönlendirilmek istenen sayfayı açabilirsiniz
                              Get.toNamed('/dictionary');
                            },
                            child: ListTile(
                              leading: const Icon(Icons.card_giftcard),
                              title: const Text('Card 3'),
                              subtitle: const Text('Description for Card 3'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
