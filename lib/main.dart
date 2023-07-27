import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:buildez/features/authentication/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.system,
      home: const WelcomeScreen()
    );
  }
}
 // class AppHome extends StatelessWidget{
 //  const AppHome({Key ? key}) : super(key:key);
 //
 //  @override
 //   Widget build(BuildContext context){
 //    return const WelcomeScreen();
 //  }
 // }
