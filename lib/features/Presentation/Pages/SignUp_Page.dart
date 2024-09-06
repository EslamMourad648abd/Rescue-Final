import 'package:flutter/material.dart';
import 'package:rescue/features/Presentation/Pages/Login_Page.dart';
import 'package:rescue/features/Presentation/Widgets/Form_Container_Widget.dart';

class Signup extends StatelessWidget {
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
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign Up",
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    FormContainerWidget(
                      //   controller: _usernameController,
                      hintText: "Username",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //    controller: _emailController,
                      hintText: "Email",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //    controller: _phonenumberController,
                      hintText: "Phone number",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //    controller: _trustednumberController,
                      hintText: "Teusted number",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //  controller: _cartypeController,
                      hintText: "Car type",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //   controller: _carcolorController,
                      hintText: "Car color",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      //  controller: _carplatesnumberController,
                      hintText: "Car plates number",
                      isPasswordField: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FormContainerWidget(
                      // controller: _passwordController,
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
                          fixedSize: const Size(130, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0))),
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Row(children: [
                      Text(
                        "Already have an account ?",
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
                              MaterialPageRoute(builder: (context) => Login()),
                              (route) => false,
                            );
                          },
                          child: Text("LogIn",
                              style: TextStyle(
                                  color: Colors.pinkAccent.shade400,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)))
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
