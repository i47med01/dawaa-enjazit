import 'package:dawaa_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:dawaa_app/components/coustom_bottom_nav_bar.dart';
import 'package:dawaa_app/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
