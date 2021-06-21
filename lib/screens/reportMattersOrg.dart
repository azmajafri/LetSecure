import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:letsecure_application/screens/amongUS.dart';
import 'package:letsecure_application/screens/cyberSAFE.dart';
import 'package:letsecure_application/screens/mcmcReport.dart';
import 'organizationChoices.dart';

class reportMatters extends StatefulWidget {
  static const routeName = '/reportMatters';

  @override
  _reportMattersState createState() => _reportMattersState();
}

class _reportMattersState extends State<reportMatters> {
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
              builder: (context) => orgChoices())
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
                  child: Text("Cybersecurity Organization for report matters you need to know.", style: GoogleFonts.inconsolata(
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
                       builder: (context) => cyberSAFE())
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
                         Image(image: AssetImage('images/cybersafe.jpg'),
                           width: 95,
                           height: 80,
                         ),
                         Container(
                           padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                           child: Text("CyberSAFE Malaysia",
                             style: TextStyle(
                               fontSize: 22,
                               fontWeight: FontWeight.bold,
                             ),
                             textAlign: TextAlign.center,
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => mcmcReport())
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
                          Image(image: AssetImage('images/mcmc.jpg'),
                            width: 70,
                            height: 70,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35.0, 0, 30.0, 10.0),
                            child: Text("Malaysian \nCommunications and \nMultimedia Commission \n(MCMC)",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute (
                        builder: (context) => amongUS())
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
                          Image(image: AssetImage('images/amongUS.png'),
                            width: 75,
                            height: 75,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(35.0, 0, 30.0, 10.0),
                            child: Text("Monsters Among Us: \nYouth Advocates ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
