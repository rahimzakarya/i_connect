import 'package:flutter/material.dart';
// import 'package:bottom_navigation_bar/home_screen.dart';
import 'home.dart';
import 'chatRoom.dart';
import 'notifications.dart';
import 'persoProfile.dart';

import 'package:flutter/material.dart';
import 'package:parcel_box/main.dart';
import 'package:parcel_box/my_flutter_app_icons.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key key}) : super(key: key);

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    NotificationWidget(),
    ChatRoomWidget(),
    ProfileWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.homeselected),
              activeIcon: Icon(MyFlutterApp.home),
              label: '.',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.notificationselected),
            activeIcon: Icon(MyFlutterApp.notification),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.chat),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.profile),
            label: '.',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF6A00A7),
        backgroundColor: Colors.white,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTap,
//         selectedFontSize: 13.0,
//         unselectedFontSize: 0,
//         selectedItemColor: Color(0xFF6A00A7),
//         selectedLabelStyle: TextStyle(
//           fontWeight: FontWeight.w900,
//         ),
        unselectedItemColor: Color(0xFF6A00A7),
        // selectedItemColor: Color(0xFF6A00A7),
        showUnselectedLabels: false,
//         unselectedLabelStyle: TextStyle(
//           fontWeight: FontWeight.w900,
//         ),
        onTap: _onItemTapped,
      ),
    );
  }
}
