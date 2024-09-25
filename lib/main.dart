import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/pages/home.dart';
import 'package:flutter/material.dart';

void main() async {
  if (Platform.isAndroid) {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBI0zzfns2ar25Y2h2Q01M8Wboyap5BpXU',
          appId: '1:426211688302:android:d4c332ac31bddcdad8cb7f',
          messagingSenderId: '426211688302',
          projectId: 'fir-crud-edc15'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}


