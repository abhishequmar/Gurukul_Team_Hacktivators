import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../first_screen.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final nonTechSkillsPageButton = Material(
      color: Colors.green,
      elevation: 0,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        elevation: 0,
        splashColor: Colors.green,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery
            .of(context)
            .size
            .width *0.80,

        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
            const UserLoginScreen(),
          ),
        ),
        child: Text(
          "Continue As A User",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),

      ),

    );
    final techSkillsPage = Material(
      color: Colors.green,
      elevation: 0,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        elevation: 0,
        splashColor: Colors.green,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery
            .of(context)
            .size
            .width *0.80,

        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
            const UserLoginScreen(),
          ),
        ),
        child: Text(
          "Continue As A User",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),

      ),

    );
    return Scaffold(
      appBar: AppBar(title: Text('Admin Home Screen')),
      drawer: Drawer(

        width: MediaQuery.of(context).size.width * 0.5,
        child: ListView(
          children: <Widget>[
            TextButton(
                onPressed: (){
                  logout(context);

                },
                child: Text("Sign Out"))

          ],
        ),
      ),

      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => FirstScreen()));
  }
}

