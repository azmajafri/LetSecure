import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cybersecOrg.dart';

class malayCouncil extends StatefulWidget {
  @override
  _malayCouncilState createState() => _malayCouncilState();
}

class _malayCouncilState extends State<malayCouncil> {
  var defaultText = TextStyle(color: Colors.black);
  var linkText = TextStyle(color: Colors.blue);
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
              builder: (context) => CyberSecOrgPage())
          ),
        ),
        title: Text('Malaysian National Security \nCouncil (NSC)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(

                    image: AssetImage('assets/MYNationalSec1.png'),
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 180),
                  height: 350,
                  width: 370,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 4,
                        spreadRadius: 6,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                top: 200, left: 35, right: 35,
                child: Text("Malaysian National Security Council (NSC) is a lead agency "
                    "that coordinates security -related policies since its inception in 1971.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 300, left: 35, right: 35,
                child: Text("Basically, NSC is responsible "
                    "for coordinating policies related to national security and the "
                    "direction of security matters", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
              SizedBox(height: 40.0),

              Positioned(
                  top:485, left: 100, right:20,
                  child:RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "To know more about NSC",
                           style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                             color: Colors.black,
                          ),

                        ),
                        TextSpan(
                          text: "    Click here",
                          style: linkText,
                          recognizer: new TapGestureRecognizer()..onTap = () async {
                           var url = "https://www.mkn.gov.my/web/ms/";
                           if (await canLaunch(url)) {
                           await launch(url);
                           } else {
                             throw 'Could not launch Url';
                             }
                            },
                          ),
                      ],
                  ),
              ),

              // RichText(text: TextSpan(
              //   children: [
              //     TextSpan(
              //       text: 'To know more about NSC',
              //       style: TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //
              //     TextSpan(
              //       text: "Click here",
              //       style: linkText,
              //       recognizer: new TapGestureRecognizer()..onTap = () async {
              //         var url = "https://www.mkn.gov.my/web/ms/";
              //         if (await canLaunch(url)) {
              //           await launch(url);
              //         } else {
              //           throw 'Could not launch Url';
              //         }
              //       },
              //     ),
              //   ],
              // ),
              // ),
              // Link(uri: Uri.parse("https://www.mkn.gov.my/web/ms/"), builder: (context, followLink){
              //   return ElevatedButton(onPressed: followLink, child: Text("Go to this link"));
              // }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

