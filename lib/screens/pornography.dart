import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pornographyPage.dart';

class pornographyDetails extends StatefulWidget {
  @override
  _pornographyDetailsState createState() => _pornographyDetailsState();
}

class _pornographyDetailsState extends State<pornographyDetails> {
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
              builder: (context) => pornographyPage())
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
                padding: EdgeInsets.only(top: 30),
                child: Text("Signs of children watching online pornography", style: GoogleFonts.inconsolata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 120, left: 25),
                width: 364,
                height: 85,
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
                left: 48,
                top: 132,
                child: Text("Excessive use of tablets or computer \n in private space away from family \nmembers.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 225, left: 25),
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
                left: 50,
                top: 240,
                child: Text("An abrupt change in their alone-time \nhabits.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320, left: 25),
                width: 364,
                height: 80,
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
                left: 40,
                top: 328,
                child: Text("Strange or unusual pop-ups, or other \nsigns of devices used to visit a sketchy \nwebsite.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 430),
                child: Text("Video related to Internet Pornography.", style: GoogleFonts.inconsolata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
