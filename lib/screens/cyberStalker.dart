import 'package:flutter/material.dart';
import 'cybersecurityInfo.dart';

class cyberStalker extends StatefulWidget {
  @override
  _cyberStalkerState createState() => _cyberStalkerState();
}

class _cyberStalkerState extends State<cyberStalker> {
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
              builder: (context) => SecurityInfoPage())
          ),
        ),
        title: Text('Online Cyber Stalker'),
        centerTitle: true,
      ),
    );
  }
}
