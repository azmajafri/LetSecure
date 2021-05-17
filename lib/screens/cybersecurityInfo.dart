import 'package:flutter/material.dart';
import 'organizationChoices.dart';
import 'pornographyPage.dart';
import 'cyberStalker.dart';
import 'cyberbullyingPage.dart';
import 'groomingPage.dart';
import 'homePage.dart';


class SecurityInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecurityInfo(),
    );
  }
}

class SecurityInfoPage extends StatefulWidget {
  static const routeName = '/securityInfo';

  @override
  _SecurityInfoPageState createState() => _SecurityInfoPageState();
}

class _SecurityInfoPageState extends State<SecurityInfoPage> {
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
          onPressed: () => Navigator.of(context).pushReplacementNamed(HomePage.routeName),
        ),
        title: Text('Cybersecurity Information'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 18.0),
            child:Column(
              children: <Widget>[
                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: -5,
                              right: -10,
                              child: Image(image: AssetImage("images/cybersec.png"),
                                width: 80,
                                height: 80,
                              ),
                            ),
                            Positioned(
                              top: 20,
                              child: Text("What is Cybersecurity?", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                            Positioned(
                              top: 48,
                              child: Text("Cybersecurity is the practice of defending "
                                  "\ncomputers servers, mobile devices, electronic "
                                  "\nsystems networks, and data from malicious "
                                  "\nattacks or being a victim of cybercrime. ", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(left: 17, bottom: 6, right: 6),
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white60.withOpacity(0.4),
                              spreadRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            // Positioned(
                            //   right: -4,
                            //     child: Image(image: AssetImage("images/cybersec.png"),
                            //       width: 70,
                            //       height: 70,
                            //     ),
                            // ),
                            Positioned(
                              top: 10,
                              child: Text("Cybersecurity Threats", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                            Positioned(
                              top: 38,
                              left: 5,
                              child: Text("There are many types of cybersecurity threats \n such as in gadget like ransomware, \n malware and many more. For this application, \n it will be focusing threats on social media like \n option below.", style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(left: 17, bottom: 6, right: 17),
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white60.withOpacity(0.4),
                              spreadRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => cyberbullyingPage())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/cyberbullying.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Cyberbullying",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => cyberStalker())
                    );
                  },
                  child: Container(
                    height: 100,
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
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/cyberattack.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Online Cyber Stalker",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => groomingPage())
                    );
                  },
                  child: Container(
                    height: 100,
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
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/grooming.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Online Grooming",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => pornographyPage())
                    );
                  },
                  child: Container(
                    height: 100,
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
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/pornography.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Internet Pornography",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => orgChoices())
                    );
                  },
                  child: Container(
                    height: 100,
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
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/organization.png'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                            child: Text("Cybersecurity \nOrganizations",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}