import 'package:flutter/material.dart';
import 'package:letsecure_app/models/authentication.dart';
import 'package:letsecure_app/screens/homePage.dart';
import 'package:letsecure_app/screens/registerPage.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {
    'email': '',
    'password': ''
  };

  void _showErrorDialog(String msg)
  {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An Error Occured'),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: (){
                Navigator.of(ctx).pop();
              },
            )
          ],
        )
    );
  }

  Future<void> _submit() async
  {
    if(!_formKey.currentState.validate())
    {
      return;
    }
    _formKey.currentState.save();

    try{
      await Provider.of<Authentication>(context, listen: false).logIn(
          _authData['email'],
          _authData['password']
      );
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);

    }catch (error)
    {
      var errorMessage='Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }
  }

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
                          onSaved: (value) {
                          _authData['email'] = value;
                          },
                      ),
                      SizedBox(height: 8.0),

                      //password
                      TextFormField(
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
                          onSaved: (value) {
                          _authData['password'] = value;
                          },
                        ),
                        SizedBox(height: 108),
                        RaisedButton(
                          child: Text('LOG IN'),
                            onPressed: () {
                              _submit();
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
            Container(
              margin: EdgeInsets.only(top:470),
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
              margin: EdgeInsets.only(top:490),
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
              margin: EdgeInsets.only(top:512),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 175.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(RegisterPage.routeName);
                  },
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
}



// class LoginPage extends StatefulWidget {
//   static const routeName = '/login';
//   @override
//   _LoginPage createState() => _LoginPage();
// }
//
// class _LoginPage extends State<LoginPage> {
//
//   String _email;
//   String _password;
//
//   Future<void> _createUser() async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword
//         (email: _email, password: _password);
//
//     } on FirebaseAuthException catch (e) {
//       print ("Error: $e");
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
//
//   // TextEditingController email = TextEditingController();
//   // TextEditingController password = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
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
//                 height: size.height * 0.88,
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.fromLTRB(130, 60, 130, 140),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     width: 170,
//                     height: 170,
//                     child: Image(
//                       image: AssetImage('images/logo.png'),
//                     ),
//                   ),
//                 ],
//                 // child: new Image(
//                 //   image: new AssetImage('images/logo.png'),
//                 //   width: 170,
//                 //   height: 170,
//                 // ),
//               ),
//             ),
//
//             Container(
//               margin: EdgeInsets.only(top:240),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 120.0),
//                 child: Text(
//                   "Let Secure",
//                   style: TextStyle(
//                     fontSize: 35.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 310),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   validator: (input) {
//                     if(input.isEmpty) {
//                       return 'Provide email';
//                     }
//                   },
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
//               padding: const EdgeInsets.symmetric(horizontal: 70.0),
//               child: Container(
//                 margin: EdgeInsets.only(top: 370),
//                 height: 50,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 child: TextField(
//                   onChanged: (value) {
//                     _password = value;
//                   },
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'Password',
//                       contentPadding: EdgeInsets.all(15)
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 10),
//
//             Container(
//               margin: EdgeInsets.only(top: 440),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 160.0),
//                 child: RaisedButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacementNamed(HomePage.routeName);
//                   },
//                   child: Text('LOG IN'),
//                   textColor: Colors.white,
//                   color: Colors.blue,
//
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top:490),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 145.0),
//                 child: new Text(
//                   "Forgot Password?",
//                   style: TextStyle(
//                     fontSize: 15.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top:550),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 110.0),
//                 child: new Text(
//                   "Don't have an account?",
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top:575),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 175.0),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.of(context).pushReplacementNamed(RegisterPage.routeName);
//                   },
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// // void _Login(String email, String password, BuildContext context) async{
// //   ProviderState _ProviderState = Provider.of<ProviderState>(context, listen: false);
// // }
// }



