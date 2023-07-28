import 'package:buildez/features/repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/signin_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Get.put(SignInController());
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Image(
                      image: const AssetImage('assets/images/BuildEz_Logo.png'),
                      height: size.height * 0.3
                  ),
                  Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.displaySmall
                  ),
                  Text(
                      'Make it Work, Make it right, Make it fast',
                      style: Theme.of(context).textTheme.bodyMedium
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: controller.email,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: 'Email',
                              hintText: 'Email',
                              border: OutlineInputBorder()
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: controller.password,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.fingerprint),
                                labelText: 'Password',
                                hintText: 'Password',
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.remove_red_eye_sharp)
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (() => SignInController.instance.loginUser(controller.email.text.trim(), controller.password.text.trim())),
                              child: const Text('LOGIN'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
          )
      )
    );
  }
}
