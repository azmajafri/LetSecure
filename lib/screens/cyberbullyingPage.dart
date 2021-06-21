import 'package:flutter/material.dart';
import 'cyberbullying.dart';
import 'cybersecurityInfo.dart';
import 'package:google_fonts/google_fonts.dart';


class cyberbullyingPage extends StatefulWidget {
  @override
  _cyberbullyingPageState createState() => _cyberbullyingPageState();
}

class _cyberbullyingPageState extends State<cyberbullyingPage> {
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
        title: Text('Cyberbullying'),
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
                left: 140,
                top: 43,
                child: Text("When someone bullies or \nharrasses others on the internet, \nespecially on social media such \nas posting rumors, threats, \ncomments and social remarks.",
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
                child: Text("Be careful when sharing your private \ninformation like pictures, phone number, \nemail on social media.",
                  style: GoogleFonts.rubik(
                    fontSize: 17,
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
                child: Text("Don't reply to any hate or threatening \ncomments on social media.",
                  style: GoogleFonts.rubik(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 468, left: 25, bottom: 30),
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
                top: 480,
                child: Text("Use privacy and security setting on your \nsocial media account and don't easily trust \nand share your private information.",
                  style: GoogleFonts.rubik(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                right: 18,
                top: 570,
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

