import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cybersecOrg.dart';

class nacsa extends StatefulWidget {
  @override
  _nacsaState createState() => _nacsaState();
}

class _nacsaState extends State<nacsa> {

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
        title: Text('Ministry of Science Technology \nand Innovation (MOSTI)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage('images/nacsa.jpg'),
                    width: 200,
                    height: 120,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 420,
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
                top: 135, left: 35, right: 35,
                child: Text("The National Cybersecurity Agency (NACSA) is the national "
                    "lead agency for cybersecurity matters, with the objectives of "
                    "securing and strengthening Malaysia's  resilience in facing "
                    "the threats of cyber attacks .",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 280, left: 35, right: 35,
                child: Text("NACSA gathers all identified national cybersecurity experts "
                    "under one roof and coordinates and collaborates with its domestic and "
                    "international counterparts, from both the public and private sectors. "
                    , style: TextStyle(
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
                        text: "To know more about NACSA ",
                        style: defaultText,
                      ),

                      TextSpan(
                        text: " Click here",
                        style: linkText,
                        recognizer: new TapGestureRecognizer()..onTap = () async {
                          var url = "https://www.nacsa.gov.my/index.php";
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
