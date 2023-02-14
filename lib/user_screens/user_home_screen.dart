import 'package:carousel_slider/carousel_slider.dart';
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
        title: Text('             GURUKUL'),
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
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 10/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  Image.network("https://cdn.discordapp.com/attachments/1050749468728893463/1071570615326216302/e570a21f-5223-46e6-b6f8-76b9cc163f9d.jpg"),
                  Image.network("https://cdn.discordapp.com/attachments/1050749468728893463/1071570615569489940/1ca4e3d5-1f19-4e6b-ae3c-1a4b9fe7a078.jpg"),
                  Image.network("https://cdn.discordapp.com/attachments/1050749468728893463/1071570615770812426/4d8d53e5-2424-4608-8d7f-b68d1ed5df3f.jpg"),
                ],
                // autoPlay: true,
                // viewportFraction: 1.0,
                // aspectRatio: 2.0,
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
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                         SoftSkillsTestScreen(),
                      ),
                    ),
                    child: Text('Take the Soft Skills Quiz',style: TextStyle(color: Colors.white),)),
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
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                         TechnicalTestScreen(),
                      ),
                    ),
                    child: Text('Take the Technical Skills Quiz', style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.symmetric(horizontal:10, vertical: 10),
          decoration: BoxDecoration(

              border: Border.all(color: Colors.grey , width: 2),

              borderRadius: BorderRadius.circular(20)
          ),
          child: SizedBox(
            height: 300,
            child: ListView.separated(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context , index){
                  return ListTile(
                    title: Text("Robocon Interview"),
                    subtitle: Text("15 March"),
                    trailing: Text("Free" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  );
                }, separatorBuilder: (context , index){
              return Divider();
            }, itemCount: 8),
          ),

        ),
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
