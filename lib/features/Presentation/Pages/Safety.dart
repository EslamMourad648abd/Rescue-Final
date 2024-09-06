import 'package:flutter/material.dart';
import 'package:rescue/features/Classes/Buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class Safety extends StatelessWidget {
  const Safety({Key? key}) : super(key: key);
  final String Police = "+122";
  final String Ambulance = "+123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
        title: const Text(
          "Safety",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.transparent,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Button(
                    text: 'Call Police',
                    onPressed: (context) async {
                      final Uri phoneUri = Uri(scheme: 'tel', path: Police);
                      if (await canLaunchUrl(phoneUri)) {
                        await launchUrl(phoneUri);
                      } else {
                        // Handle the error if the dialer cannot be opened
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Could not open the dialer.')),
                        );
                      }
                    },
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => RequestYourAttraction()),
                    // );
                  ),
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'Call Ambulance',
                    onPressed: (context) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HelpFromPeople()),
                      // );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'Call Trusted Contact',
                    onPressed: (context) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => RequestWinch()),
                      // );
                    },
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
