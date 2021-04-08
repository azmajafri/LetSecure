import 'package:flutter/material.dart';
import 'cyberStalkerPage.dart';
import 'cybersecurityInfo.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: Image(image: AssetImage('images/cyberbully.jpg'),
                  width: 115,
                  height: 110,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 28, left: 140),
                width: 260,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 145,
                top: 43,
                child: Text("Using a high-tech modus \noperandi such as through email \nor internet to commit the crime, \nharassment, and fear in one \nor more victims.",
                  style: GoogleFonts.rubik(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 196, left: 28),
                child: Text("Quick Tips!", style: GoogleFonts.inconsolata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
              Positioned(
                top: 180,
                left: 154,
                child: Image(image: AssetImage('images/lightbulb.png'),
                  width: 35,
                  height: 35,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 238, left: 25),
                width: 364,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 75,
                top: 263,
                child: Text("Password protect all accounts.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 332, left: 25),
                width: 364,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 72,
                top: 358,
                child: Text("Never reveal your home address.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 428, left: 25),
                width: 364,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 38,
                top: 440,
                child: Text("Do not feel obligated to fill \nout all fields when registering online.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 524, left: 25, bottom: 40),
                width: 364,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 38,
                top: 540,
                child: Text("Aware on the changes of social media \nprivacy policy and keeps checking \nyour privacy setting.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                right: 18,
                top: 625,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => cyberStalkerPage())
                    );
                  },
                  child: Text("Next",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
