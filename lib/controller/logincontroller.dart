import 'package:get/get.dart';

class LoginContoller extends GetxController {
  var loginscreen = true.obs;

  void onLoginTap() {
    loginscreen.value = true;
  }

  void onSignUpTap() {
    loginscreen.value = false;
  }
}
