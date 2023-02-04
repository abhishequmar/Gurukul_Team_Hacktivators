import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var docid ="";

class BeginnerSoftSkillsScreen extends StatefulWidget {
  @override
  _BeginnerSoftSkillsScreenState createState() => _BeginnerSoftSkillsScreenState();
}

class _BeginnerSoftSkillsScreenState extends State<BeginnerSoftSkillsScreen> {
  List<String> _data = [];

  @override
  void initState() {
    super.initState();
    // Reference to the Firestore database
    final firestore = FirebaseFirestore.instance;
    // Fetch a collection
    firestore.collection("CommunicationSkillsCourses").get().then((querySnapshot) {
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
    await firestore.collection("CommunicationSkillsCourses")
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
        title: Text('Beginner Soft Skills'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(_data[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [


              ],
            ),

          );
        },
      ),
    );
  }
}



