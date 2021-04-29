import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cybersecOrg.dart';

class securelytics extends StatefulWidget {
  @override
  _securelyticsState createState() => _securelyticsState();
}

class _securelyticsState extends State<securelytics> {

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
        title: Text('Securelytics'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage('images/securelytics.png'),
                    width: 150,
                    height: 100,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 430,
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
                top: 115, left: 35, right: 35,
                child: Text("Securelytics is an independent cybersecurity advisory firm and have a"
                    "proven track record in ensuring that they deliver high quality ICT security and "
                    "testing services for commercial and government clients.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 255, left: 35, right: 35,
                child: Text("They do provide training and workshop on ISO standards, "
                    "risk assessment and cybersecurity.", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
              Positioned(
                top: 335, left: 35, right: 35,
                child: Text("Securelytics also offer consultation on how "
                    "company can comply to the local and international "
                    "standards.", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
              Positioned(
                top:420, left: 35, right:20,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "To know more about Securelytics ",
                        style: defaultText,
                      ),

                      TextSpan(
                        text: " Click here",
                        style: linkText,
                        recognizer: new TapGestureRecognizer()..onTap = () async {
                          var url = "https://securelytics.my/";
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
            ],
          ),
        ),
      ),
    );
  }
}
