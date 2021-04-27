import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'securelytics.dart';
import 'mcmc.dart';
import 'mcca.dart';
import 'cybersecMY.dart';
import 'nacsa.dart';
import 'mosti.dart';
import 'malayCouncil.dart';
import 'cyberbullyingPage.dart';
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
  static const routeName = '/cybersecOrg';
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
          child: Container(
            padding: EdgeInsets.only(top: 18.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 110,
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Cybersecurity Organization you need to know.", style: GoogleFonts.inconsolata(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => malayCouncil())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/MYNationalSec.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Malaysian National \nSecurity Council",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => mosti())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/mosti.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Ministry of Science \nTechnology and \nInnovation (MOSTI)",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => nacsa())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/nacsa.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("National \nCybersecurity Agency \n(NACSA)",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => cybersecMY())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/cybersecMY.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50.0, 0, 30.0, 10.0),
                            child: Text("Cybersecurity \nMalaysia",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => mcca())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/mcca.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Malaysia Cyber \nConsumer Association \n(MCCA)",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => mcmc())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/mcmc.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(18.0, 0, 30.0, 10.0),
                              child: Text("Malaysian \nCommunications and \nMultimedia Commission \n(MCMC)",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => securelytics())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/securelytics.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(50.0, 0, 30.0, 10.0),
                            child: Text("Securelytics",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}