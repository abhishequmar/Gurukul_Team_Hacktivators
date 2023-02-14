import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

var docid ="";

class BeginnerTechSkillsScreen extends StatefulWidget {
  @override
  _BeginnerTechSkillsScreenState createState() => _BeginnerTechSkillsScreenState();
}

class _BeginnerTechSkillsScreenState extends State<BeginnerTechSkillsScreen> {
  List<String> _data = [];
  List<String> _link = [];

  @override
  void initState() {
    super.initState();
    // Reference to the Firestore database
    final firestore = FirebaseFirestore.instance;
    // Fetch a collection
    firestore.collection("beginnertechskills").get().then((querySnapshot) {
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
        title: Text('Beginner Tech Skills'),
      ),
      body: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_data[index]),
              leading: IconButton(
                onPressed: (){
                  //launchUrl(Uri.parse(_link[index]));
                },
                icon: Icon(Icons.link_rounded),),

            );
          },
        ),
      ),
    );
  }
}



