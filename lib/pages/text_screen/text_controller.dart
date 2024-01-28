import 'package:get/get.dart';

class TextController extends GetxController {
  RxList<String> textList = <String>[].obs;
  static const int maxTextFields = 5;

  void addTextField() {
    if (textList.length < maxTextFields) {
      print(textList.length);
      textList.insert(0, "");
    } else {
      print("Time limit exited");
      Get.snackbar(
        'Limit Exceeded',
        'You can add up to $maxTextFields text fields.',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
      );
    }
  }
}
