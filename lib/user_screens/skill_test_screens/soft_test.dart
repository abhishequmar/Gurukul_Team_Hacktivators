import 'package:flutter/material.dart';
import 'package:gurukul_team_hacktivators/user_screens/soft_skills_screens/advanced_soft_skills_screen.dart';
import 'package:gurukul_team_hacktivators/user_screens/soft_skills_screens/beginner_soft_skills_screen.dart';
import 'package:gurukul_team_hacktivators/user_screens/soft_skills_screens/intermediate_soft_skills_screen.dart';


int finalscore=0;
var docid ="";

class SoftSkillsTestScreen extends StatefulWidget {
  const SoftSkillsTestScreen({Key? key}) : super(key: key);

  @override
  State<SoftSkillsTestScreen> createState() => _SoftSkillsTestScreenState();
}

class _SoftSkillsTestScreenState extends State<SoftSkillsTestScreen> {


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

      controller: Q1controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },

      onSaved: (value){
        finalscore += (int.parse(Q1controller.text) as int);

      },

      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q2 = TextFormField(
      autofocus: false,
      controller: Q2controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },
      onSaved: (value){
        finalscore += (int.parse(Q2controller.text)) as int;

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q3 = TextFormField(
      autofocus: false,
      controller: Q3controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },

      onSaved: (value){
        finalscore += (int.parse(Q3controller.text)as int);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q4 = TextFormField(
      autofocus: false,
      controller: Q4controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },

      onSaved: (value){
        finalscore += (int.parse(Q4controller.text)as int);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q5 = TextFormField(
      autofocus: false,
      controller: Q5controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },

      onSaved: (value){
        finalscore += int.parse(Q5controller.text)as int;

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q6 = TextFormField(
      autofocus: false,
      controller: Q6controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },


      onSaved: (value){
        finalscore += int.parse(Q6controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q7 = TextFormField(
      autofocus: false,
      controller: Q7controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },


      onSaved: (value){
        finalscore += int.parse(Q7controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )

      ),

    );
    final Q8 = TextFormField(
      autofocus: false,
      controller: Q8controller,
      keyboardType: TextInputType.number ,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a value';
        }
        final intValue = int.tryParse(value);
        if (intValue == null) {
          return 'Please enter a valid integer value between 1 and 5';
        }
        if (intValue < 1 || intValue > 5) {
          return 'Please enter a value between 1 and 5';
        }
        return null;
      },


      onSaved: (value){
        finalscore += int.parse(Q8controller.text);

      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
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
          if (_formKey.currentState!.validate()) {
            finalscore = ((int.parse(Q1controller.text) as int) +
                (int.parse(Q2controller.text) as int) +
                (int.parse(Q3controller.text) as int) +
                (int.parse(Q4controller.text) as int) +
                (int.parse(Q5controller.text) as int) +
                (int.parse(Q6controller.text) as int) +
                (int.parse(Q7controller.text) as int) +
                (int.parse(Q8controller.text) as int));
            print(finalscore);


            if (finalscore <= 15) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return BeginnerSoftSkillsScreen();
                    }
                ),
              );
            } else if (finalscore > 15 && finalscore <= 30) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return IntermediateSoftSkillsScreen();
                    }
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return AdvancedSoftSkillsScreen();
                    }
                ),
              );
            }
          }

        },
        child: Text(
          "Submit",
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
                onWillPop: () async {
                  final isValid = _formKey.currentState?.validate() ?? false;
                  return isValid;
                },
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                    Text("Soft Skills Quiz", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),),
                    SizedBox(height: 45),
                    Text('Q1)  On a scale of 1-5, how knowledgeable do you feel about the latest technologies and tools in your field of study?'),
                    SizedBox(height: 20),
                    Q1,

                    SizedBox(height: 20),
                    Text('Q2)  On a scale of 1-5, how proficient are you with using various software or programming languages?'),

                    SizedBox(height: 20),
                    Q2,
                    SizedBox(height: 20),
                    Text('Q3)  On a scale of 1-5, how well do you troubleshoot technical problems and find solutions?'),

                    SizedBox(height: 20),
                    Q3,
                    SizedBox(height: 20),
                    Text('Q4)  On a scale of 1-5, how comfortable are you with learning and adapting to new technologies and tools?'),

                    SizedBox(height: 20),
                    Q4,
                    SizedBox(height: 20),
                    Text('Q5)  On a scale of 1-5, how confident do you feel when speaking in public or in group settings?'),

                    SizedBox(height: 20),
                    Q5,
                    SizedBox(height: 20),
                    Text('Q6)  On a scale of 1-5, how confident do you feel in writing reports, emails, or other professional documents?'),

                    SizedBox(height: 20),
                    Q6,
                    SizedBox(height: 20),
                    Text('Q7)  On a scale of 1-5, how comfortable are you expressing your ideas in writing?'),

                    SizedBox(height: 20),
                    Q7,
                    SizedBox(height: 20),
                    Text('Q8)  On a scale of 1-5, how effectively do you communicate through writing?'),

                    SizedBox(height: 20),
                    Q8,
                    SizedBox(height: 30),
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
