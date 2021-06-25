import 'package:flutter/material.dart';
import 'package:letsecure_application/services/providerWidget.dart';
import 'package:letsecure_application/models/userData.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  User user = User("");
  TextEditingController _nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("User Profile"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.withOpacity(0.6),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: Provider
                    .of(context)
                    .auth
                    .getCurrentUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return displayUserInformation(context, snapshot);
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )
            ],
          ),
        )
      ),
    );
  }

  Widget displayUserInformation(context, snapshot) {
    final authData = snapshot.data;


    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 40.0, 8.0, 8.0),
          child: Text(
            "Name: ${authData.displayName ?? 'Anonymous'}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email: ${authData.email ?? 'Anonymous'}",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),

        SizedBox(height: 10.0),
        RaisedButton(
          color: Colors.blueAccent,
            child: Text("Edit User"),
            textColor: Colors.white,
            onPressed: () {
              _userEditBottomSheet(context);
            }
            ),
      ],
    );
  }

  _getProfileData() async {
    final uid = Provider.of(context).auth.getCurrentUID();
    await Provider.of(context)
        .db
        .collection('Users')
        .document(uid)
        .get().then((result) {
      user.displayName = result.data['displayName'];
      user.email = result.data['email'];
    });
  }

  void _userEditBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SingleChildScrollView(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .60,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Update Profile"),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.cancel),
                          color: Colors.blueAccent,
                          iconSize: 25,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                helperText: "Name",
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          child: Text('Save'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () async {
                            user.displayName = _nameController.text;
                            setState(() {
                              _nameController.text = user.displayName;
                            });
                            final uid =
                            Provider
                                .of(context)
                                .auth
                                .getCurrentUID();
                            await Provider
                                .of(context)
                                .db
                                .collection('Users')
                                .document(uid)
                                .setData(user.toJson());
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
        );
      },
    );
  }
}
