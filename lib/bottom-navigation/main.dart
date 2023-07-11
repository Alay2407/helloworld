
import 'package:flutter/material.dart';
import 'package:hello_world/bottom-navigation/model/menu_item.dart';
import 'package:hello_world/bottom-navigation/screens/home_screen.dart';
import 'package:hello_world/bottom-navigation/screens/notification_screen.dart';
import 'package:hello_world/bottom-navigation/screens/profile_screen.dart';
import 'package:hello_world/bottom-navigation/screens/search_screen.dart';
import 'package:hello_world/bottom-navigation/screens/setting_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  // var widgetOptions = <Widget>[
  //   HomeScreen(),
  //   SearchScreen(),
  //   SettingScreen(),
  //   NotificationScreen(),
  //   ProfileScreen(),
  // ];

  /*var colors = [
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.red
  ];*/

  var itemList = <MenuItem>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemList.add(MenuItem('Home', Colors.amber, HomeScreen()));
    itemList.add(MenuItem('Search', Colors.green, SearchScreen()));
    itemList.add(MenuItem('Settings', Colors.blue, SettingScreen()));
    itemList.add(MenuItem('Notification', Colors.purple, NotificationScreen()));
    itemList.add(MenuItem('Profile', Colors.red, ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: itemList[selectedIndex].color,
        title: Text(itemList[selectedIndex].title),
      ),
      /*body: widgetOptions[selectedIndex],*/
      body: itemList[selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.black,
       currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        /*showSelectedLabels: false,*/
        /*fixedColor: Colors.green,*/
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
              backgroundColor: itemList[selectedIndex].color),
          BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
              backgroundColor: itemList[selectedIndex].color),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
              backgroundColor: itemList[selectedIndex].color),
          BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.notifications),
              backgroundColor: itemList[selectedIndex].color),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
              backgroundColor: itemList[4].color),
        ],
      ),
    );
  }
}
