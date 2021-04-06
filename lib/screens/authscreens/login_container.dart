import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  var textContaroller=TextEditingController();
  final width;

  LoginContainer({this.width});
  @override
  Widget build(BuildContext context) {
    return loginContainer();
  }

  Container loginContainer() {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(16),
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15))),
      margin: EdgeInsets.only(top: 12, left: 42),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back.',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Login to continue',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400]),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    "assets/images/young-businessman-profile-over-white-background-vector-12055341.jpg"),
              ),
            ),
            Container(
              height: 65,
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(height: 1.0),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1)),
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 65,
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: TextFormField(
                controller: textContaroller,
                maxLines: 1,
                cursorColor: Colors.black,
                style: TextStyle(height: 1.0),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(1),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1)),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.centerRight,
              child: Text(
                "forgot password?",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              width: double.infinity,
              child: CupertinoButton(
                color: Colors.black,
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Stack(
              children: [
                Divider(
                  thickness: 2,
                ),
                Center(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: Colors.white,
                        child: Text("Or")))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              height: 65,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey[100], width: 3)),
                    primary: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundImage:
                          AssetImage("assets/images/download (3).png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with google",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
