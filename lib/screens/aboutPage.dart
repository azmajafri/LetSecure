import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {

  @override
  _aboutPageState createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.6),
        leading: IconButton(icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 30,
        ),
          onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
          }
        ),
        title: Text('About'),
        centerTitle: true,
      ),
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
                height: size.height * 0.70,
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

            Positioned(
              top: 245, left: 45, right: 40,
              child: Text('LetSecure is a mobile application that enable users especially '
                  'secondary school students and teachers to be more aware about cybersecurity '
                  'and threats that they can get when using  gadget or social media. '
                  'This mobile application also help people who did not have basics about IT to '
                  'be more aware about cybersecurity. User can get both more information and test '
                  'their knowledge by using this apps.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
