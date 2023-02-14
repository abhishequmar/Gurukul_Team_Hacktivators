import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

var docid ="";

class AdvancedTechSkillsScreen extends StatefulWidget {
  @override
  _AdvancedTechSkillsScreenState createState() => _AdvancedTechSkillsScreenState();
}

class _AdvancedTechSkillsScreenState extends State<AdvancedTechSkillsScreen> {
  List<String> _data = [];
  List<String> _link = [];

  @override
  void initState() {
    super.initState();
    // Reference to the Firestore database
    final firestore = FirebaseFirestore.instance;
    // Fetch a collection
    firestore.collection("advancedtechskills").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        // Extract the data from the documents
        var data = result.data();
        // Add the data to the list
        setState(() {
          _data.add(data["Name"]);
          _link.add(data["Link"]);
        });
      });
    });
  }
  // function to delete a document


  // function to update a document
  // Function to handle updating the document


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Technical Skill Courses'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final documentReference = FirebaseFirestore.instance.collection("Courses").doc(index.toString());
          return ListTile(
            title: Text(_data[index]),
            trailing: IconButton(
              icon: Icon(Icons.link_rounded),
              onPressed: (){
                launchUrl(Uri.parse(_link[index]));
              },
            )

          );
        },
      ),
    );
  }
}



