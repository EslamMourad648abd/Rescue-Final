import 'package:flutter/material.dart';

class HelpFromPeople extends StatelessWidget {
  const HelpFromPeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/Help_From_People.jpg"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
            backgroundColor: Colors.white30,
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              title: const Text(
                "Help From People",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            )));
  }
}
