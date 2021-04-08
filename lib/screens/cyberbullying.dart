import 'package:flutter/material.dart';
import 'package:letsecure_app/screens/pornographyPage.dart';

import 'cybersecurityInfo.dart';

class cyberbullying extends StatefulWidget {
  static const routeName = '/cyberbullying';
  @override
  _cyberbullyingState createState() => _cyberbullyingState();
}

class _cyberbullyingState extends State<cyberbullying> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              builder: (context) => pornographyPage())
          ),
        ),
        title: Text('Cyberbullying'),
        centerTitle: true,
      ),
    );
  }
}


