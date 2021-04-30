import 'package:flutter/material.dart';
import 'cyberbullying.dart';
import 'cybersecurityInfo.dart';
import 'package:google_fonts/google_fonts.dart';

class pornographyPage extends StatefulWidget {
  @override
  _pornographyPageState createState() => _pornographyPageState();
}

class _pornographyPageState extends State<pornographyPage> {
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
        title: Text('Internet Pornography'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: Image(image: AssetImage('images/internetPorno.png'),
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
                left: 150,
                top: 43,
                child: Text("Internet sites that show \nsexual behaviour practices \nor materials that contain \nimages or videos that involves \nsexual acts.",
                  style: GoogleFonts.rubik(
                    fontSize: 17,
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
                left: 46,
                top: 253,
                child: Text("Check the video games and websites \nyour children are interacting with, \nand the images featured.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 352, left: 25),
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
                left: 51,
                top: 372,
                child: Text("Parents should limit the screen time \nof their children on the gadget.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 468, left: 25),
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
                top: 490,
                child: Text("Parents should put boundaries on what \nthe children can do and watch online.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 580, left: 25, bottom: 50),
                width: 364,
                height: 100,
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
                left: 30,
                top: 598,
                child: Text("Explain consequences by let the children \nknow once an image is sent over the \ninternet, it is not possible to take it back.",
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
                top: 700,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => cyberbullying())
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