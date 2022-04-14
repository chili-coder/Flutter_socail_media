import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:socail_media/ui/chat.dart';
import 'package:socail_media/ui/home.dart';
import 'package:socail_media/ui/notification.dart';
import 'package:socail_media/ui/profile.dart';

class ButtomNavPage extends StatefulWidget {
  const ButtomNavPage({Key? key}) : super(key: key);

  @override
  _ButtomNavPageState createState() => _ButtomNavPageState();
}

class _ButtomNavPageState extends State<ButtomNavPage> {

  List pages = [
    HomePage(),
    NotificationPage(),
    ChatPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index)
        {
          setState(() {
            currentIndex=index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Shop"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notice"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black12,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black12,
          ),
        ],
      ),

    );
  }
}
