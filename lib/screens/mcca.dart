import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cybersecOrg.dart';

class mcca extends StatefulWidget {
  @override
  _mccaState createState() => _mccaState();
}

class _mccaState extends State<mcca> {

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
        title: Text('Malaysia Cyber Consumer \nAssociation (MCCA)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage('images/mcca.jpg'),
                    width: 200,
                    height: 120,
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
                ),
              ),
              Positioned(
                top: 130, left: 35, right: 35,
                child: Text("Malaysia Cyber Consumer Association (MCCA) is an organization "
                    "that established specifically to bring the voice and rights of cyber "
                    "users while providing diverse education to all levels of users. ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 255, left: 35, right: 35,
                child: Text("MCCA objective is to educate, advocate and defend. ",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
              Positioned(
                top: 315, left: 35, right: 35,
                child: Text("In MCMC also people can report any complaints "
                    "and cyber problems to them. ", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top:390, left: 35, right:20,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "To know more about MCCA ",
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
            ],
          ),
        ),
      ),
    );
  }
}
