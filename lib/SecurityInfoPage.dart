import 'package:flutter/material.dart';


class SecurityInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecurityInfo(),
    );
  }
}

// ignore: camel_case_types
class SecurityInfoPage extends StatefulWidget {
  @override
  _SecurityInfoPageState createState() => _SecurityInfoPageState();
}

class _SecurityInfoPageState extends State<SecurityInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text('Cybersecurity Information'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(

        ),
      ),
    );
  }
}