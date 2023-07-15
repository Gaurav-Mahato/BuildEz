import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      home: AppHome()
    );
  }
}
 class AppHome extends StatelessWidget{
  const AppHome({Key ? key}) : super(key:key);

  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Application')
      ),
      body: const Center(
        child: Text('Hello World')
      )
    );
  }
 }
