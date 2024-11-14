
import 'package:ecoapp/pages/signup.dart';
import 'package:ecoapp/provider/homeprovider.dart';
import 'package:ecoapp/provider/signpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(create: (context) => home_provider(),),
      ChangeNotifierProvider(create: (context) => provider1(),),
    ],
    child: MaterialApp(
      title: 'lool merce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    ),);
  }
}
