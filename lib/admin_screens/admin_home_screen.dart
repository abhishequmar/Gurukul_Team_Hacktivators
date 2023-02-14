import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gurukul_team_hacktivators/admin_screens/course_seeing_screens/beginner_tech_seeing.dart';
import 'package:gurukul_team_hacktivators/admin_screens/course_seeing_screens/inter_soft_seeing.dart';
import 'package:gurukul_team_hacktivators/first_screen.dart';
import 'course_seeing_screens/adv_soft_seeing.dart';
import 'course_seeing_screens/adv_tech_seeing.dart';
import 'course_seeing_screens/begin_soft_seeing.dart';
import 'course_seeing_screens/inter_tech_seeing.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Home Screen'),),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return BeginnerSoftSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Beginner Soft Skills', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return IntermediateSoftSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Intermediate Soft Skills', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return AdvanceSoftSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Advance Soft Skills', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return BeginnerTechSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Beginner Tech Skills', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return IntermediateTechSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Intermediate Tech Skills', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 10,),
            Material(
              color: Colors.purple,
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  splashColor: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return AdvanceTechSkillSeeingScreen();
                          }
                      ),
                    );
                  },
                  child: Text('Advance Tech Skills', style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 10,),

            SizedBox(height: 10,),
            SizedBox(height: 10,),





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
