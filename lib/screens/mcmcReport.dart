import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cybersecOrg.dart';

class mcmcReport extends StatefulWidget {
  @override
  _mcmcReportState createState() => _mcmcReportState();
}

class _mcmcReportState extends State<mcmcReport> {

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
        title: Text('Malaysian Communications and \nMultimedia Commission (MCMC)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image(
                    image: AssetImage('images/mcmc.jpg'),
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 150),
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
                top: 160, left: 35, right: 35,
                child: Text("Malaysian Communications and Multimedia Commission's (MCMC) "
                    "key role was the regulation of the communications and multimedia industry "
                    "based on the powers provided for in the Malaysian Communications and "
                    "Multimedia Commission Act (1998) and the Communications and Multimedia "
                    "Act (1998). ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 370, left: 35, right: 35,
                child: Text("People also can report any cases related to cybersecurity "
                    "to MCMC for further investigate and actions to the attacker.",
                  style: TextStyle(
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
                        text: "To know more about MCMC and report cases ",
                        style: defaultText,
                      ),

                      TextSpan(
                        text: " Click here",
                        style: linkText,
                        recognizer: new TapGestureRecognizer()..onTap = () async {
                          var url = "https://aduan.skmm.gov.my/";
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
