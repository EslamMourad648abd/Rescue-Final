import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rescue/features/Classes/Buttons.dart';
import 'package:rescue/features/Presentation/Pages/Chat_Bot.dart';
import 'package:rescue/features/Presentation/Pages/Help_From_people.dart';
import 'package:rescue/features/Presentation/Pages/Maintenance.dart';
import 'package:rescue/features/Presentation/Pages/Profile.dart';
import 'package:rescue/features/Presentation/Pages/Request_Winch.dart';
import 'package:rescue/features/Presentation/Pages/Request_Your_Attraction_Page.dart';
import 'package:rescue/features/Presentation/Pages/Safety.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int _pageIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    MainScreen2(),
    Safety(),
    Chat_Bot(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("Assets/Images/Background image.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _pages[_pageIndex],
        bottomNavigationBar: CurvedNavigationBar(
          index: _pageIndex,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          color: Colors.white70,
          items: <Widget>[
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black,
            ),
            Icon(Icons.local_police_outlined, size: 30, color: Colors.black),
            Icon(Icons.chat_bubble_outline_outlined,
                size: 30, color: Colors.black),
            Icon(Icons.person, size: 30, color: Colors.black),
          ],
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            }); //Handle button tap
          },
        ),
      ),
    );
  }
}

class MainScreen2 extends StatelessWidget {
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
          "Rescue",
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
                    text: 'Request Your Attraction',
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RequestYourAttraction()),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'Help From People',
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpFromPeople()),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'Request Winch',
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RequestWinch()),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'Maintanance',
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Maintenance()),
                      );
                    },
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
