import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gurukul_team_hacktivators/first_screen.dart';
import 'package:gurukul_team_hacktivators/user_screens/skill_test_screens/soft_test.dart';
import 'package:gurukul_team_hacktivators/user_screens/skill_test_screens/technical_skills_test.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('User Home Screen'),
      ),
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
        child:  Column(
          children: [
            TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                    const TestScreen(),
                  ),
                ),
                child: Text('Take the Soft Skills Test')),
            SizedBox(height: 10,),
            TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                    const TechnicalTestScreen(),
                  ),
                ),
                child: Text('Take the Technical Skills Test')),
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
