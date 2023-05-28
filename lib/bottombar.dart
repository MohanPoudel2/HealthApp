import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/pages/noti_page.dart';
import 'package:health_app/pages/setting_page.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    NotiPage(),
    SettingPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF8EF),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(right: 15,left: 15,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 6,
              blurRadius: 10,
              offset: Offset(0,3)
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,

            onTap: onTabTapped,
            currentIndex: _currentIndex,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'noti',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],

          ),
        ),

      )
    );
  }
}