import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'organizationChoices.dart';

class cyberSAFE extends StatefulWidget {
  @override
  _cyberSAFEState createState() => _cyberSAFEState();
}

class _cyberSAFEState extends State<cyberSAFE> {
  static const routeName = '/cyberSAFE';

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
              builder: (context) => orgChoices())
          ),
        ),
        title: Text('CyberSAFE Malaysia'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage('images/cybersafe.jpg'),
                    width: 190,
                    height: 130,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 120),
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
                )
              ),
              Positioned(
                top: 136, left: 35, right: 35,
                child: Text("CyberSAFE, short for Cyber Security Awareness For Everyone, "
                    "is CyberSecurity Malaysia's initiative and Outreach Department "
                    "tasked with educating and enhancing the awareness of the general "
                    "public on the technological and social issues facing internet users, "
                    "particularly on the risks they face online. ",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 315, left: 35, right: 35,
                child: Text("People can also reach and report the cases that they face "
                    "or they become the victim of cyberattacks or related to "
                    "cybersecurity cases. ",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 420, left: 35, right: 35,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "To know more about report matters and cyberSAFE ",
                        style: defaultText,
                      ),

                      TextSpan(
                        text: " Click here",
                        style: linkText,
                        recognizer: new TapGestureRecognizer()..onTap = () async {
                          var url = "https://www.cybersafe.my/en/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch Url';
                          }
                        },
                      )
                    ]
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

