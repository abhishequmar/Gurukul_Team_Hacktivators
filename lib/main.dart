import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:gurukul_team_hacktivators/user_screens/user_home_screen.dart';

import 'first_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: const FirebaseOptions(
    //   apiKey: "AIzaSyC5buMB0nxik2iu4WhiWdXeWxm9NtpLCRQ", // Your apiKey
    //   appId: "XXX", // Your appId
    //   messagingSenderId: "XXX", // Your messagingSenderId
    //   projectId: "ekyam-c8209", // Your projectId
    // ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }

  }


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StreamSubscription<User?> user;

  @override
  void initState() {
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        Fluttertoast.showToast(msg: 'signed out!');
      } else {
        Fluttertoast.showToast(msg: 'signed in!');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const UserHomeScreen();
        } else {
          return FirebaseAuth.instance.currentUser == null
              ? FirstScreen()
              : const UserHomeScreen();
        }
      },
    );
  }
}
