import 'package:flutter/material.dart';

class Maintenance extends StatelessWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/Maintenance.jpg"),
              fit: BoxFit.cover),
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
                "Maintanance",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            )));
  }
}
