import 'package:flutter/material.dart';
import '../technical_skill_screens/advanced_technical_skills_screen.dart';
import '../technical_skill_screens/beginner_technical_skills_screen.dart';
import '../technical_skill_screens/intermediate_technical_skills_screen.dart';



int finalscore=0;
var docid ="";

class TechnicalTestScreen extends StatefulWidget {
  const TechnicalTestScreen({Key? key}) : super(key: key);

  @override
  State<TechnicalTestScreen> createState() => _TechnicalTestScreenState();
}

class _TechnicalTestScreenState extends State<TechnicalTestScreen> {



  String? errorMessage;
  final _formKey =GlobalKey<FormState>();
  final Q1controller = new TextEditingController();
  final Q2controller = new TextEditingController();
  final Q3controller = new TextEditingController();
  final Q4controller = new TextEditingController();
  final Q5controller = new TextEditingController();
  final Q6controller = new TextEditingController();
  final Q7controller = new TextEditingController();
  final Q8controller = new TextEditingController();





  @override

  Widget build(BuildContext context) {
    final Q1 = TextFormField(
      autofocus: false,
      controller: Q1controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += (int.parse(Q1controller.text) as int);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q2 = TextFormField(
      autofocus: false,
      controller: Q2controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += (int.parse(Q2controller.text)) as int;

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q3 = TextFormField(
      autofocus: false,
      controller: Q3controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += (int.parse(Q3controller.text)as int);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q4 = TextFormField(
      autofocus: false,
      controller: Q4controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += (int.parse(Q4controller.text)as int);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q5 = TextFormField(
      autofocus: false,
      controller: Q5controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += int.parse(Q5controller.text)as int;

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q6 = TextFormField(
      autofocus: false,
      controller: Q6controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += int.parse(Q6controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q7 = TextFormField(
      autofocus: false,
      controller: Q7controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += int.parse(Q7controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q8 = TextFormField(
      autofocus: false,
      controller: Q8controller,
      keyboardType: TextInputType.number ,


      onSaved: (value){
        finalscore += int.parse(Q8controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "On a scale of 1-5, how confident do you feel when speaking in public or in group settings?",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );





    final submitButton =Material(
      color: Colors.purple,
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        splashColor: Colors.blueAccent,
        padding: EdgeInsets.fromLTRB(20, 15,20, 15),
        minWidth: MediaQuery.of(context).size.width,

        onPressed: (){
          finalscore = ((int.parse(Q1controller.text)as int)+(int.parse(Q2controller.text)as int)+(int.parse(Q3controller.text)as int)+(int.parse(Q4controller.text)as int)+(int.parse(Q5controller.text)as int)+(int.parse(Q6controller.text)as int)+(int.parse(Q7controller.text)as int)+(int.parse(Q8controller.text)as int));
          print(finalscore);

          if(finalscore <= 15){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return BeginnerTechSkillsScreen();
                  }
              ),
            );
          }else if(finalscore >15 && finalscore <=30){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return IntermediateTechSkillsScreen();
                  }
              ),
            );
          }else{
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return AdvancedTechSkillsScreen();
                  }
              ),
            );
          }


        },
        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),

      ),

    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple),
          onPressed: () {
            // passing this to our root
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: 45),
                    Text('On a scale of 1-5, how confident do you feel when speaking in public or in group settings?'),
                    SizedBox(height: 20),
                    Q1,

                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how well do you listen and understand others perspectives?'),

                    SizedBox(height: 20),
                    Q2,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how well do you articulate your thoughts and ideas to others?'),

                    SizedBox(height: 20),
                    Q3,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how comfortable are you with presenting your work or ideas to others?'),

                    SizedBox(height: 20),
                    Q4,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how confident do you feel when speaking in public or in group settings?'),

                    SizedBox(height: 20),
                    Q5,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how confident do you feel in writing reports, emails, or other professional documents?'),

                    SizedBox(height: 20),
                    Q6,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how comfortable are you expressing your ideas in writing?'),

                    SizedBox(height: 20),
                    Q7,
                    SizedBox(height: 20),
                    Text('On a scale of 1-5, how effectively do you communicate through writing?'),

                    SizedBox(height: 20),
                    Q8,
                    SizedBox(height: 20),
                    submitButton,
                    SizedBox(height: 15),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
