// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/config/custom_router.dart';
import 'package:flutter_instagram/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[50],
          appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              color: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black)),
          textTheme: const TextTheme(
              headline6: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}
