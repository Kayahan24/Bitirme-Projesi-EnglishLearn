import 'package:bitirme_english/controllers/auth_controller.dart';
import 'package:bitirme_english/controllers/question_papers/question_paper_controller.dart';
import 'package:bitirme_english/controllers/theme_controller.dart';
import 'package:bitirme_english/services/firebase_storage_service.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.lazyPut(() => FirebaseStorageService());
  }
}
