import 'package:flutter/material.dart';
import 'cybersecurityInfo.dart';

class groomingPage extends StatefulWidget {
  @override
  _groomingPageState createState() => _groomingPageState();
}

class _groomingPageState extends State<groomingPage> {
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
        title: Text('Online Grooming'),
        centerTitle: true,
      ),
    );
  }
}
