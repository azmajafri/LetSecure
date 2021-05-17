import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'organizationChoices.dart';

class amongUS extends StatefulWidget {
  @override
  _amongUSState createState() => _amongUSState();
}

class _amongUSState extends State<amongUS> {
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
                    image: AssetImage('images/amongUS.png'),
                    width: 190,
                    height: 140,
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
                top: 175, left: 35, right: 35,
                child: Text("Monsters Among Us: Youth Advocates is a youth-led "
                    "organisation in Malaysia combatting child sexual abuse through "
                    "advocacy, education, and community involvement. ",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Positioned(
                top: 295, left: 35, right: 35,
                child: Text("The organization also help anyone who one of the "
                    "victim or witnessed any cases on how to make a report and will "
                    "be taken to an action. ",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Positioned(
                top: 395, left: 35, right: 35,
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: "To getting help and know more about Monster Among Us ",
                          style: defaultText,
                        ),

                        TextSpan(
                          text: " Click here",
                          style: linkText,
                          recognizer: new TapGestureRecognizer()..onTap = () async {
                            var url = "http://monstersamongusmy.weebly.com/reporting-abuse.html";
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
