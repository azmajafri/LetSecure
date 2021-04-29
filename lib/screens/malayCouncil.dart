import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'cybersecOrg.dart';


class malayCouncil extends StatefulWidget {
  @override
  _malayCouncilState createState() => _malayCouncilState();
}

class _malayCouncilState extends State<malayCouncil> {

  var defaultText = TextStyle(color: Colors.black, fontSize: 16);
  var linkText = TextStyle(color: Colors.blue, fontSize: 16);
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
                    image: AssetImage('images/MYNationalSec.jpg'),
                    width: 120,
                    height: 150,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 160),
                  height: 400,
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
                top: 180, left: 35, right: 35,
                child: Text("Malaysian National Security Council (NSC) is a lead agency "
                    "that coordinates security -related policies since its inception in 1971.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 280, left: 35, right: 35,
                child: Text("Basically, NSC is responsible "
                    "for coordinating policies related to national security and the "
                    "direction of security matters", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
              Positioned(
                top: 380, left: 35, right: 35,
                child: Text("NSC also give awareness about cyber "
                    "in their website in order to educate people on how to "
                    "keep aware about cybersecurity.", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),

              Positioned(
                top:470, left: 35, right:20,
                child: RichText(
                  text: TextSpan(
                  children: [
                    TextSpan(
                      text: "To know more about NSC ",
                      style: defaultText,
                    ),

                    TextSpan(
                      text: " Click here",
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
              ),
              // Link(uri: Uri.parse("https://www.mkn.gov.my/web/ms/"), builder: (context, followLink){
              //   return ElevatedButton(onPressed: followLink, child: Text("Go to this link"));
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
