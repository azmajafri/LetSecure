import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:let_secure/SecurityInfoPage.dart';
// import 'SignUpPage.dart';
// import 'package:let_secure/screens/Authenticate/authenticate.dart';
// import 'package:let_secure/services/auth.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        '/SecurityInfoPage' :(context)=>SecurityInfoPage(),
      },
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {


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
                      onTap: openSecurityInfoPage,
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
                                Image(image: AssetImage('images/cyber-security1.png'),
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

                          Image(image: AssetImage('images/careerInfo2.png'),
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
                          Image(image: AssetImage('images/quiz2.png'),
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
  void openSecurityInfoPage () {
    Navigator.pushNamed(context, '/SecurityInfoPage');
  }
}

  // Widget _createAccountLabel() {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => SignUpPage()));
  //     },
  //     child: Container(
  //       margin: EdgeInsets.symmetric(vertical: 20),
  //       padding: EdgeInsets.all(15),
  //       alignment: Alignment.bottomCenter,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text(
  //             'Don\'t have an account ?',
  //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
  //           ),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text(
  //             'Register',
  //             style: TextStyle(
  //                 color: Color(0xfff79c4f),
  //                 fontSize: 13,
  //                 fontWeight: FontWeight.w600),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }




