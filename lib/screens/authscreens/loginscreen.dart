import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:thereyet/controller/logincontroller.dart';
import 'package:thereyet/resposive.dart';
import 'package:thereyet/screens/authscreens/login_container.dart';
import 'package:thereyet/screens/authscreens/signup_container.dart';

class LoginScreen extends StatelessWidget {
  var contoller = Get.put(LoginContoller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 5,
              child: Container(

                margin: EdgeInsets.only(top: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: GestureDetector(
                            onTap: () => contoller.onSignUpTap(),
                            child: Obx(() => contoller.loginscreen.value
                                ? signupText(Colors.grey)
                                : signupText(Colors.white)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Obx(() => !contoller.loginscreen.value
                            ? CircleAvatar(
                                radius: 3.5,
                                backgroundColor: Colors.white,
                              )
                            : SizedBox())
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: GestureDetector(
                            onTap: () => contoller.onLoginTap(),
                            child: Obx(() => contoller.loginscreen.value
                                ? loginText(Colors.white)
                                : loginText(Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Obx(() => contoller.loginscreen.value
                            ? CircleAvatar(
                                radius: 3.5,
                                backgroundColor: Colors.white,
                              )
                            : SizedBox())
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Obx(
              () => AnimatedSwitcher(
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  duration: Duration(milliseconds: 500),
                  child: contoller.loginscreen.value
                      ? Responsive(
                          mobile: LoginContainer(
                            width: double.infinity,
                          ),
                          web: Container(
                            margin: EdgeInsets.only(left: 43, top: 35),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15))),
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: LoginContainer(
                              width: 700.0,
                            ),
                          ),
                        )
                      : SignupContainer()),
            ),
          ],
        ),
      ),
    );
  }

  Text signupText(Color color) {
    return Text(
      'Sign up',
      style: TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.bold),
    );
  }

  Text loginText(Color color) {
    return Text(
      'Login',
      style: TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w900),
    );
  }
}
