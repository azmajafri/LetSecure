import 'package:flutter/material.dart';
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
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          child:Column(
            children: <Widget>[
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
            ],
          ),
        ),
      ),
    );
  }
}