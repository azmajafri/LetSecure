import 'package:flutter/material.dart';
import 'stageGame.dart';
import 'aboutPage.dart';
import 'careerPage.dart';
import 'certificate.dart';
import 'profile.dart';
import 'LoginPage.dart';
import 'cybersecurityInfo.dart';

class HomePage extends StatefulWidget {
  final String uid;

  HomePage({Key key, this.uid}) : super(key: key);
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // @override
  // initState() {
  //   // this.getCurrentUser();
  //   super.initState();
  // }
  //
  // // void getCurrentUser() async {
  // //   currentUser = await FirebaseAuth.instance.currentUser;
  // // }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("LetSecure"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.6),
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
                      child: Image(image: AssetImage('images/logo.png'),
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
                // accountName: FutureBuilder(
                //     future: FirebaseDatabase.instance
                //         .reference().child("Users")
                //         .child(widget.uid)
                //         .once(),
                //     builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                //       if (snapshot.hasData) {
                //         return Text(snapshot.data.value['email']);
                //       } else {
                //         return CircularProgressIndicator();
                //       }
                //     }),

                // accountEmail: FutureBuilder(
                //   future: FirebaseDatabase.instance
                //       .reference()
                //       .child("Users")
                //       .child(widget.uid)
                //       .once(),
                //   builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                //     if (snapshot.hasData) {
                //       return Text(snapshot.data.value['name']);
                //     } else {
                //       return CircularProgressIndicator();
                //     }
                //   }),

              ),

              // Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     // mainAxisAlignment: MainAxisAlignment.end,
              //     children: <Widget>[
              //       Container(
              //         width: 65,
              //         height: 65,
              //         child: Image(image: AssetImage('images/logo.png'),
              //         ),
              //       ),
              //       // Container(
              //       //   margin: EdgeInsets.only(top: 16),
              //       //   child: Text(
              //       //     "LetSecure",
              //       //     style: TextStyle(
              //       //         color: Colors.white,
              //       //         fontSize: 20
              //       //     ),
              //       //   ),
              //       // )
              //     ],
              //   ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  print(widget.uid);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(uid: widget.uid)),
                  );
                }
                // => Navigator.push(context, new MaterialPageRoute(
                //     builder: (context) => HomePage())
                // ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: ()
                // {
                //   print(widget.uid);
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => HomePage(uid: widget.uid)),
                //   );
                // }
                => Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => ProfileView())
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: ()
                // {
                //   print(widget.uid);
                // }
                => Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => aboutPage())
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () => Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => LoginPage())
              ),
              ),
            ]
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
                            Image(image: AssetImage('images/cert.png'),
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
