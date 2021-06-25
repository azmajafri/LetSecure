import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:letsecure_application/models/firebase.dart';
import 'homePage.dart';
import 'loginPage.dart';

class RegisterPage extends StatefulWidget {
  // RegisterPage({Key key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isLoading = false;
  // String email="", password="";
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference dbRef =
  FirebaseDatabase.instance.reference().child("Users");
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[900],
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: EdgeInsets.only(top: 48.0, bottom: 10.0),
                    width: size.width * 0.85,
                    height: size.height * 0.93,

                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image(
                          image: AssetImage('images/logo.png'),
                          width: 150,
                          height: 150,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.only(top: 1.0),
                            child: Text('LetSecure', style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 3.0)
                              )
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.length < 3) {
                              return 'Enter Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 3.0)
                              )
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter an Email Address';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            // else {
                            //   email = value;
                            // }
                            return null;
                          },
                          // onSaved: (value) {
                          //   email = value;
                          // },
                        ),
                      ),
                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: "Password",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 3.0)
                              )
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter Password';
                            } else if (value.length < 6) {
                              return 'Password must be atleast 6 characters!';
                            }
                            // else {
                            //   password = value;
                            // }
                            return null;
                          },
                          // onSaved: (value) {
                          //   password = value;
                          // },
                        ),
                      ),
                      SizedBox(height: 8.0),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: confirmPassController,
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 2.0)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 3.0)
                              )
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter Password';
                            } else if (value.length < 6) {
                              return 'Password must be atleast 6 characters!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 8.0),

                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 1.0),
                        child: isLoading
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue)),
                          onPressed: () async{
                            try {
                              await Firebase.initializeApp();
                              UserCredential users = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                  email: emailController.text, password: passwordController.text,
                              );
                              User updateUser = FirebaseAuth.instance.currentUser;
                              updateUser.updateProfile(displayName: nameController.text);
                              // updateUser.updateProfile(email: emailController.text);
                              userSetup(nameController.text);
                              // userSetup(emailController.text);
                              Navigator.of(context).pushNamed(LoginPage.routeName);
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                print('The password provided is too weak.');
                              } else if (e.code == 'email-already-in-use') {
                                print('The account already exists for that email.');
                              }
                            } catch (e) {
                              print(e.toString());
                            }

                            // if (_formKey.currentState.validate()) {
                            //   setState(() {
                            //     isLoading = true;
                            //   });
                            //   registerToFb();
                            // }
                          },
                          child: Text('SIGN UP'),
                        ),
                      ),

                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: new Text(
                          "Already have an account? Login",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ))));
  }
}


