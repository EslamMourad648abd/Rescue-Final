import 'package:flutter/material.dart';
import 'package:rescue/features/Presentation/Pages/SignUp_Page.dart';
import 'package:rescue/features/Presentation/Widgets/Form_Container_Widget.dart';

import 'Main_Screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/login background.jpg"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            title: const Text(
              "Rescue",
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  SizedBox(
                    height: 30,
                  ),
                  FormContainerWidget(
                    hintText: "Email",
                    isPasswordField: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormContainerWidget(
                    hintText: "Password",
                    isPasswordField: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.black,
                        fixedSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0))),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                        (route) => false,
                      );
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Don't have an account yet !",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()),
                                (route) => false,
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.pinkAccent.shade400,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
