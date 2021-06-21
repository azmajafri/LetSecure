import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'groomingPage.dart';

class groomingDetails extends StatefulWidget {
  static const routeName = '/groomingDetails';
  @override
  _groomingDetailsState createState() => _groomingDetailsState();
}

class _groomingDetailsState extends State<groomingDetails> {

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "CPhCJjrLZnE",
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      )
  );

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
              builder: (context) => groomingPage())
          ),
        ),
        title: Text('Online Grooming'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text("Signs of grooming in teenagers.", style: GoogleFonts.inconsolata(
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
                top: 128,
                child: Text("In relationship with much older \nboyfriend or girlfriend and doesn't want \n other people around when they're with a \nparticular boyfriend or girlfriend.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 240, left: 25),
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
                left: 60,
                top: 255,
                child: Text("Doesn't want to talk about what \nthey've been doing, or lies about it.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 335, left: 25),
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
                left: 55,
                top: 345,
                child: Text("Has unexplained gifts like expensive \nthings and didn't tell where they got \nfrom.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 450, left: 65, bottom: 290),
                child: Text("Video related to Online \nGrooming.", style: GoogleFonts.inconsolata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),
              ),

              Positioned(
                top: 500,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
