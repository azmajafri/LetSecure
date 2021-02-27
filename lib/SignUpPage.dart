import 'package:flutter/material.dart';
import 'main.dart';
// import 'HomePage.dart';


//The main function is the starting point for the Flutter apps.

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new RegisterPage(),
        routes: {
          '/MyApp' :(context)=>MyApp()
        },
        theme: new ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 48.0),
                width: size.width * 0.85,
                height: size.height * 0.85,
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(130, 60, 130, 140),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 170,
                height: 170,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 277),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                      contentPadding: EdgeInsets.all(15)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 338),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      contentPadding: EdgeInsets.all(15)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 399),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(15)
                  ),
                  obscureText: true,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 460),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.all(15)
                  ),
                  obscureText: true,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 555.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 160.0),
                child: RaisedButton(
                  onPressed: openMyApp,
                  child: Text('Sign Up'),
                  textColor: Colors.white,
                  color: Colors.blue,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 515.0),
                  child: Text('Already have an account? Login', style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,

                  ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 232.0),
                  child: Text('LetSecure', style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  void openMyApp(){
    Navigator.pushNamed(context, '/MyApp');
  }

  // }
  // void openMyApp(){
  //   Navigator.pushNamed(context, '/MyApp');
  // }
}