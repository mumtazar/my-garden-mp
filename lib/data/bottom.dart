import 'package:flutter/material.dart';
import 'package:flutter_application/data/etalase.dart';
import 'package:flutter_application/data/home.dart';
import 'package:flutter_application/data/profil.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    Home(),
    Etalase(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: 'Home',
              activeIcon:
                  Icon(Icons.home_max_outlined, color: Colors.amberAccent)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.blue,
              ),
              label: 'Etalase',
              activeIcon: Icon(Icons.shop_outlined, color: Colors.amberAccent)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
              ),
              label: 'Profil',
              activeIcon: Icon(Icons.account_circle_outlined,
                  color: Colors.amberAccent)),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
