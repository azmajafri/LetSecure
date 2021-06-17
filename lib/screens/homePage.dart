import 'package:flutter/material.dart';
import 'package:letsecureapp/screens/aboutPage.dart';
import 'package:letsecureapp/screens/certificate.dart';
import 'package:letsecureapp/screens/cybersecurityInfo.dart';
import 'package:letsecureapp/screens/login_screen.dart';
import 'package:letsecureapp/screens/stageGame.dart';

import 'careerPage.dart';



class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.withOpacity(0.6),
        title: Text('LetSecure'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blueAccent
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 65,
                      height: 65,
                      child: Image(image: AssetImage('assets/logo.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        "LetSecure",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () => Navigator.of(context).pop(),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: () => Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => aboutPage())
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                  onTap: () => Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => LoginScreen())
              ),
              ),
            ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 80.0),
          height: 500,
          child: GridView.count(crossAxisCount: 2,
            children: <Widget>[
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => SecurityInfoPage())
                    );

                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(11.0),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(image: AssetImage('assets/cybersecurity.png'),
                              width: 115,
                              height: 115,
                            ),
                            Spacer(),
                            Text("Cybersecurity Information",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => careerPage())
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: <Widget>[

                            Image(image: AssetImage('assets/careerInfo.png'),
                              width: 105,
                              height: 105,
                            ),
                            Spacer(),
                            Text("Career",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Information",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(

                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => stageGamePage())
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Container(

                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(image: AssetImage('assets/quiz.png'),
                              width: 105,
                              height: 105,

                            ),
                            SizedBox(height: 15.0),
                            Text("Quiz",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(

                child: InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute (
                        builder: (context) => certificatePage())
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Container(

                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 3,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image(image: AssetImage('assets/cert.png'),
                              width: 105,
                              height: 105,

                            ),
                            SizedBox(height: 15.0),
                            Text("Certificate",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ) ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ] ,
          ),
        ),
      ),
    );
  }
}
