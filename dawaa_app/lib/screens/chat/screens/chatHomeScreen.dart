import 'package:dawaa_app/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/recent_chats.dart';
import 'Contact_Screen.dart';

class ChatHomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ChatHomeScreen> {
  int _currentIndex = 0;
  // var chatIconColor;
  // var groupIconColor;
  // var profileIconCOlor;

  final List<Widget> screens = [
    RecentChats(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(); // default
    switch (_currentIndex) {
      case 0:
        // chatIconColor = Colors.blue;
        // groupIconColor = Colors.grey.shade600;
        // profileIconCOlor = Colors.grey.shade600;
        widget = screens[0];
        break;
      case 1:
        widget = AlertDialog(
          title: const Text('Coming Soon'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Group section will be available soon'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatHomeScreen()),
                );
              },
            ),
          ],
        );
        // chatIconColor = Colors.grey.shade600;
        // groupIconColor = Colors.blue;
        // profileIconCOlor = Colors.grey.shade600;

        break;

      case 2:
        // chatIconColor = Colors.grey.shade600;
        // groupIconColor = Colors.grey.shade600;
        // profileIconCOlor = Colors.blue;
        break;
    }
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 15),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey.shade100)),
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          ),
          child: Column(
            children: <Widget>[
              widget,
            ],
          ),
        ),
      )
    ]);
  }
}
