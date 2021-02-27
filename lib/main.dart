// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:let_secure/HomePage.dart';
import 'package:let_secure/SecurityInfoPage.dart';
import 'package:let_secure/SignUpPage.dart';
// import 'package:let_secure/screens/wrapper.dart';
// import 'package:let_secure/services/auth.dart';
// import 'package:provider/provider.dart';
// // import 'SignUpPage.dart';


//The main function is the starting point for the Flutter apps.

//The main function is the starting point for the Flutter apps.
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      // value: AuthService().user,
      return new MaterialApp(
          debugShowCheckedModeBanner: false,
          home: new LoginPage(),
          routes: {
            '/HomePage' :(context)=>HomePage()
          },
          // routes: {
          //   'SignUpPage' :(context)=>SignUpPage()
          // },
          theme: new ThemeData(
              primarySwatch: Colors.blue
          )
      );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child: new Stack(
          children: <Widget>[
            Center(
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(top: 48.0),
                width: size.width * 0.85,
                height: size.height * 0.88,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(130, 60, 130, 140),
              child: new Image(
                image: new AssetImage('images/logo.png'),
                width: 170,
                height: 170,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:240),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0),
                child: new Text(
                  "Let Secure",
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 310),
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
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                margin: EdgeInsets.only(top: 370),
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
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 440),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160.0),
                child: RaisedButton(
                  onPressed: openHomePage,
                  child: Text('LOG IN'),
                  textColor: Colors.white,
                  color: Colors.blue,

                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:490),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 145.0),
                child: new Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:550),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110.0),
                child: new Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:575),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 175.0),
                child: InkWell(
                  onTap: () {},
                  child: new Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void openHomePage() {
    Navigator.pushNamed(context, '/HomePage');
  }

  // void openSignUpPage() {
  //   Navigator.pushNamed(context, '/SignUpPage');
  // }
}


// import 'package:flutter/material.dart';
// import 'HomePage.dart';
//
//
// //The main function is the starting point for the Flutter apps.
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: new RegisterPage(),
//         routes: {
//           '/HomePage' :(context)=>HomePage()
//         },
//         theme: new ThemeData(
//             primarySwatch: Colors.blue
//         )
//     );
//   }
// }
//
// class RegisterPage extends StatefulWidget {
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return  Scaffold(
//       backgroundColor: Colors.blue[900],
//       body: SingleChildScrollView(
//         child: Stack(
//           children: <Widget>[
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.grey.withOpacity(0.4),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 margin: EdgeInsets.only(top: 48.0),
//                 width: size.width * 0.85,
//                 height: size.height * 0.85,
//               ),
//             ),
//
//             Padding(
//               padding: EdgeInsets.fromLTRB(130, 60, 130, 140),
//               child: Image(
//                 image: AssetImage('images/logo.png'),
//                 width: 170,
//                 height: 170,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 277),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Name',
//                       contentPadding: EdgeInsets.all(15)
//                   ),
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 338),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Email',
//                       contentPadding: EdgeInsets.all(15)
//                   ),
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 399),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Password',
//                       contentPadding: EdgeInsets.all(15)
//                   ),
//                   obscureText: true,
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 460),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Confirm Password',
//                       contentPadding: EdgeInsets.all(15)
//                   ),
//                   obscureText: true,
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 555.0),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 160.0),
//                 child: RaisedButton(
//                   onPressed: openHomePage,
//                   child: Text('Sign Up'),
//                   textColor: Colors.white,
//                   color: Colors.blue,
//                 ),
//               ),
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 515.0),
//                   child: Text('Already have an account? Login', style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//
//                   ),),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 232.0),
//                   child: Text('LetSecure', style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//
//                   ),),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
//   void openHomePage(){
//     Navigator.pushNamed(context, '/HomePage');
//   }
// }

