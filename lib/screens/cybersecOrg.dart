import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cybersecurityInfo.dart';

class CybersecOrg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CybersecOrg(),
    );
  }
}

class CyberSecOrgPage extends StatefulWidget {

  @override
  _CyberSecOrgPageState createState() => _CyberSecOrgPageState();
}

class _CyberSecOrgPageState extends State<CyberSecOrgPage> {
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
              builder: (context) => SecurityInfoPage())
          ),
        ),
        title: Text('Cybersecurity Organization'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text("Cybersecurity Organization you need to know.", style: GoogleFonts.inconsolata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 90),
                child: Image(image: AssetImage('images/Poster.png'),
                  width:420,
                  height: 420,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}