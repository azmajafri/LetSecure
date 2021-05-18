import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'cyberbullyingPage.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cyberbullying extends StatefulWidget {
  static const routeName = '/cyberbullying';
  @override
  _cyberbullyingState createState() => _cyberbullyingState();
}

class _cyberbullyingState extends State<cyberbullying> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "4_CBq_Kxtgw",
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    )
  );
  
  // YoutubePlayerController _controller = YoutubePlayerController(
  //   initialVideoId: '0Xo8N9qlJtk',
  //   flags: YoutubePlayerFlags(
  //     autoPlay: true,
  //     mute: false,
  //   ),
  // );

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
              builder: (context) => cyberbullyingPage())
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
                padding: EdgeInsets.only(top: 30),
                child: Text("What action can cyberbullying victim do?", style: GoogleFonts.inconsolata(
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
                left: 85,
                top: 135,
                child: Text("Block the one who write the \nhate comments.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 215, left: 25),
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
                left: 70,
                top: 230,
                child: Text("Report the account that tend to \nbecome cyberbullying offender.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 310, left: 25),
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
                left: 55,
                top: 325,
                child: Text("Talking to the trusted people about \nwhat happen and asking for help.",
                  style: GoogleFonts.rubik(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 430, bottom: 290 ),
                child: Text("Video related to Online Cyberbullying.", style: GoogleFonts.inconsolata(
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


