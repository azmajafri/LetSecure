import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsecure_app/screens/homePage.dart';
import 'package:provider/provider.dart';
import '../models/authentication.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/signup';
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _authData = {
    'email': '',
    'password': ''
  };

  void _showErrorDialog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) =>
            AlertDialog(
              title: Text('An Error Occured'),
              content: Text(msg),
              actions: <Widget>[
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            )
    );
  }

  Future <void> _submit() async
  {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      await Provider.of<Authentication>(context, listen: false).signUp(
          _authData['email'],
          _authData['password']
      );
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);

    } catch (error) {
      var errorMessage = 'Authentication Failed. Please try again later.';
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
              height: size.height * 0.90,
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(130, 60, 130, 140),
              child: Image(
                image: AssetImage('images/logo.png'),
                width: 160,
                height: 160,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(top: 228.0),
              child: Text('LetSecure', style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),

            Container(
              padding: EdgeInsets.fromLTRB(50, 272, 50, 0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //name
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Name',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 3.0)
                          )
                      ),
                            keyboardType: TextInputType.name,
                            onSaved: (value) {
                              _authData['name'] = value;
                            },
                          ),
                    SizedBox(height: 8.0),
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
                          )
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
                          )
                      ),
                      obscureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value.isEmpty || value.length <= 6) {
                          return 'invalid password';
                        }
                        return null;
                        },
                      onSaved: (value) {
                        _authData['password'] = value;
                        },
                    ),
                    SizedBox(height: 8.0),

                    //confirm password
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 3.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0)
                    ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty || value != _passwordController.text) {
                          return 'invalid password';
                        }
                        return null;
                        },
                      onSaved: (value) {
                        _authData['password'] = value;
                        },
                    ),
                    SizedBox(height: 60),

                    RaisedButton(
                      child: Text('SIGN UP'),
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

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 570.0),
                child: Text('Already have an account? Login', style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,

                ),),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}







// class RegisterPage extends StatefulWidget {
//   static const routeName = '/signUp';
//   @override
//   _RegisterPage createState() => _RegisterPage();
// }
//
// class _RegisterPage extends State<RegisterPage> {
//
//   String _email;
//   String _password;
//
//   Future<void> _createUser() async {
//     try {
//         UserCredential userCredential = await FirebaseAuth.instance
//             .createUserWithEmailAndPassword
//             (email: _email, password: _password);
//     } on FirebaseAuthException catch (e) {
//       print("Error: $e");
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
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
//
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
//                   onChanged: (value) {
//                     _email = value;
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
//                   onChanged: (value) {
//                     _password = value;
//                   },
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
//                   onPressed: () async {
//                     Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
//                   },
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
//                   child: Text(
//                     'Already have an account? Login', style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                   ),
//                   ),
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
//                     fontWeight: FontWeight.bold,
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
//}