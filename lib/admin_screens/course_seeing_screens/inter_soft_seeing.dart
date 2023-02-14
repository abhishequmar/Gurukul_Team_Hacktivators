import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Course_adding_screens/inter_soft_add.dart';

var docid ="";

class IntermediateSoftSkillSeeingScreen extends StatefulWidget {
  @override
  _IntermediateSoftSkillSeeingScreenState createState() => _IntermediateSoftSkillSeeingScreenState();
}

class _IntermediateSoftSkillSeeingScreenState extends State<IntermediateSoftSkillSeeingScreen> {
  List<String> _data = [];

  @override
  void initState() {
    super.initState();
    // Reference to the Firestore database
    final firestore = FirebaseFirestore.instance;
    // Fetch a collection
    firestore.collection("intermediatesoftskills").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        // Extract the data from the documents
        var data = result.data();
        // Add the data to the list
        setState(() {
          _data.add(data["Name"]);
        });
      });
    });
  }
  // function to delete a document
  void _deleteDocument(String fieldName) async {
    final firestore = FirebaseFirestore.instance;
    // Delete the document that contains the given field name
    await firestore.collection("intermediatesoftskills")
        .where("Name", isEqualTo: fieldName)
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        result.reference.delete();
      });
    });
    // Remove the data from the list
    setState(() {
      _data.remove(fieldName);
    });
  }


  // function to update a document
  // Function to handle updating the document


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intermediate Soft Skill Courses'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_data[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Confirm Deletion"),
                                  content: Text("Are you sure you want to delete this document?"),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("Cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: Text("Delete"),
                                      onPressed: () {
                                        _deleteDocument(_data[index]);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              }
                          );
                        },
                      ),
                    ],
                  ),

                );
              },
            ),
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return IntermediateSoftSkillAddingScreen();
                      }
                  ),
                );
              },
              child: Text('Add Data')),
        ],
      ),
    );
  }
}



