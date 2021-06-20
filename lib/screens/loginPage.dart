import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'registerPage.dart';

enum LoginType{
  email,
}

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  bool isLoading = false;

//   void _loginUser({
//   @required LoginType type,
//     String email,
//     String password,
//     BuildContext context,
// }) async {
//     try {
//       String _returnString;
//
//       switch (type) {
//         case LoginType.email:
//           _returnString = await Auth().loginUserWithEmail(email, password);
//           break;
//           default;
//       }
//
//       if (_returnString == "success") {
//         Navigator.pushAndRemoveUntil
//           (context,
//             MaterialPageRoute(
//                 builder: (context) => OurRoot(),
//             ),
//                 (route) => false
//         );
//       } else {
//         Scaffold.of(context).showSnackBar(
//             Snackbar(
//               content: Text(_returnString),
//               duration: Duration(seconds: 2),
//             ),
//         );
//       }
//     } catch (e) {
//       print(e);
//     }
//   }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                height: size.height * 0.88,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130, 60, 130, 140),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 165,
                height: 165,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 232.0),
                  child: Text('LetSecure', style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 300, 50, 0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      //email
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 3.0)
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty || !value.contains('@')) {
                            return 'invalid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.0),

                      //password
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 3.0)
                            )),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty || value.length <= 5) {
                            return 'invalid password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 110),
                      RaisedButton(
                        child: Text('LOG IN'),
                        onPressed: () {
                          if(_formKey.currentState.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            logInToFb();
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top:470),
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 145.0),
            //     child: new Text(
            //       "Forgot Password?",
            //       style: TextStyle(
            //         fontSize: 15.0,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top:480),
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
              margin: EdgeInsets.only(top:492),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160.0),
                child: FlatButton(
                  child: new Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => RegisterPage())
                    );
                  },
                  // child: new Text(
                  //   "Sign Up",
                  //   style: TextStyle(
                  //     fontSize: 16.0,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void logInToFb() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text)
        .then((result) {
      isLoading = false;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(uid: result.user.uid)),
      );
    }).catchError((err) {
      print(err.message);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                ElevatedButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }
}

