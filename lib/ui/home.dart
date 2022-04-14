import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socail_media/pageui/post.dart';
import 'package:socail_media/pageui/social_day.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:socail_media/ui/chat.dart';
import 'package:socail_media/ui/notification.dart';
import 'package:socail_media/ui/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        backgroundColor: Colors.transparent,

        actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Icon(Icons.search),
            )
        ],

        ///  leading:

        title: Text("Social Media",
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),

        leading: Icon(Icons.menu,color: Colors.black,),
      ),




      body: Padding(
        padding: const EdgeInsets.only(right: 16,left: 16),
        child: Column(
          children: [
            Expanded(flex: 1,child: SocialDayPage()),
            Expanded(flex: 9,child: PostPage()),
          ],
        ),
      ),






    );
  }
}
