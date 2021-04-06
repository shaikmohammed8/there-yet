import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupContainer extends StatelessWidget {
  final width;

  const SignupContainer({this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
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
              'Welcome.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Sign up to get started',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400]),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    "assets/images/young-businessman-profile-over-white-background-vector-12055341.jpg"),
              ),
            ),
            Container(
              height: 65,
              padding: EdgeInsets.only(top: 4, bottom: 4),
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
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: TextFormField(
                maxLines: 1,
                cursorColor: Colors.black,
                style: TextStyle(height: 1.0),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(1),
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1)),
                    labelText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 65,
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: TextFormField(
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
              height: 65,
              padding: EdgeInsets.only(top: 4, bottom: 4),
              child: TextFormField(
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
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              width: double.infinity,
              child: CupertinoButton(
                color: Colors.black,
                child: Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 8,
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
                      "Signup with google",
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
