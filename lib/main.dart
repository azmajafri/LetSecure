import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:letsecure_application/screens/homePage.dart';
import 'package:letsecure_application/screens/loginPage.dart';
import 'package:letsecure_application/screens/registerPage.dart';
import 'package:letsecure_application/services/auth.dart';
import 'package:letsecure_application/services/providerWidget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        auth: AuthService(),
        db: FirebaseFirestore.instance,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.blue[900],
          ),
          home: HomePage(),
          routes: <String, WidgetBuilder> {
            '/register': (BuildContext context) => RegisterPage(),
            '/login': (BuildContext context) => LoginPage(),
            '/home': (BuildContext context)  => HomePage(),
          },
        ),
    );
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider.value(
    //       value: Authentication(),
    //       auth: AuthService(),
    //       db: FirebaseFirestore.instance,
    //     )
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       primaryColor: Colors.blue[900],
    //     ),
    //     home: HomePage(),
    //     routes: <String, WidgetBuilder>{
    //       '/register': (BuildContext context) => RegisterPage(),
    //       '/login': (BuildContext context) => LoginPage(),
    //       '/home': (BuildContext context)  => HomePage(),
    //     },
    //   ),
    // );
  }
}


class LandingPage extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    return FutureBuilder(
      //Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if(snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }

        if(snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder(

            stream: FirebaseAuth.instance.authStateChanges(),
            builder:  (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.active) {
                User user = snapshot.data;

                if(user == null) {
                  return RegisterPage();
                } else {
                  return HomePage();
                }
              }

              return Scaffold(
                body: Center(
                  child: Text("Checking Authentication..."),
                ),
              );
            },
          );
        }

        return Scaffold(
          body: Center(
            child: Text("Connecting to the app..."),
          ),
        );
      },
    );
  }
}
