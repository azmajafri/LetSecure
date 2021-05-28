import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cybersecurityInfo.dart';
import 'reportMattersOrg.dart';
import 'cybersecOrg.dart';


class orgChoices extends StatefulWidget {
  static const routeName = '/orgChoices';

  @override
  _orgChoicesState createState() => _orgChoicesState();
}

class _orgChoicesState extends State<orgChoices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.6),
        leading: IconButton(icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 30,
        ),
          onPressed: () => Navigator.push(context, new MaterialPageRoute(
              builder: (context) => SecurityInfoPage())
          ),
        ),
        title: Text('Cybersecurity Organization'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 18.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 110,
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Organization based on \n its needs.", style: GoogleFonts.inconsolata(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => CyberSecOrgPage())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage('images/jobsearch.png'),
                            width: 65,
                            height: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35.0, 0, 30.0, 10.0),
                            child: Text("Cybersecurity \nOrganizations and \nJob Offers",
                              style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => reportMatters())
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.07),
                          blurRadius: 4,
                          spreadRadius: 6,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                          children: <Widget>[
                      Image(image: AssetImage('images/report.png'),
                      width: 65,
                      height: 65,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(35.0, 0, 30.0, 10.0),
                        child: Text("Report Matters",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]
                    ),
                  ),
                )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}

