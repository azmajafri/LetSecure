import 'package:flutter/material.dart';
import 'cybersecurityInfo.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.withOpacity(0.6),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text('LetSecure'),
        centerTitle: true,
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
                            Image(image: AssetImage('images/cyberSecurity.png'),
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
                  onTap: () {},
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

                            Image(image: AssetImage('images/careerInfo.png'),
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
                  onTap: () {},
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
                            Image(image: AssetImage('images/quiz.png'),
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
            ] ,
          ),
        ),
      ),
    );
  }
}
