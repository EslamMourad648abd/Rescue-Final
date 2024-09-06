// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
//
// class Curved_Navigation_Bar extends StatelessWidget {
//   final navigationKey = GlobalKey<CurvedNavigationBarState>();
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return CurvedNavigationBar(
//       key: navigationKey,
//       buttonBackgroundColor: Colors.blue,
//       backgroundColor: Colors.transparent,
//       color: Colors.white70,
//       items: <Widget>[
//         Icon(Icons.home_outlined, size: 30, color: Colors.black),
//         Icon(Icons.list, size: 30, color: Colors.black),
//         Icon(Icons.compare_arrows, size: 30, color: Colors.black),
//         Icon(Icons.ac_unit, size: 30, color: Colors.black),
//       ],
//       onTap: (index) {
//         //Handle button tap
//       },
//     );
//   }
// }
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBarWidget extends StatefulWidget {
  final Function(int) onTap;
  final int currentIndex;

  CurvedNavigationBarWidget({required this.onTap, required this.currentIndex});

  @override
  _CurvedNavigationBarWidgetState createState() =>
      _CurvedNavigationBarWidgetState();
}

class _CurvedNavigationBarWidgetState extends State<CurvedNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: GlobalKey<CurvedNavigationBarState>(),
      buttonBackgroundColor: Colors.blue,
      backgroundColor: Colors.transparent,
      color: Colors.white70,
      items: <Widget>[
        Icon(Icons.home_outlined, size: 30, color: Colors.black),
        Icon(Icons.list, size: 30, color: Colors.black),
        Icon(Icons.compare_arrows, size: 30, color: Colors.black),
        Icon(Icons.ac_unit, size: 30, color: Colors.black),
      ],
      index: widget.currentIndex,
      onTap: widget.onTap,
    );
  }
}
