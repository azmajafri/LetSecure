import 'package:flutter/material.dart';
import 'homePage.dart';

class profile extends StatefulWidget {
  static const routeName = '/userProfile';

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.6),
        leading: IconButton(icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 30,
        ),
          onPressed: () => Navigator.push(context, new MaterialPageRoute(
              builder: (context) => HomePage())
          ),
        ),
        title: Text('User Profile'),
        centerTitle: true,
      ),
      // body: SingleChildScrollView(
      //   child: SafeArea(
      //     child: Stack(
      //
      //     ),
      //   ),
      // ),
    );
  }
}
