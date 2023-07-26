import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Image(
                        image: const AssetImage('assets/images/BuildEz_Logo.png'),
                        height: size.height * 0.2
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
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person_outline_outlined),
                                  labelText: 'Name',
                                  hintText: 'Name',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined),
                                  labelText: 'Email',
                                  hintText: 'Email',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.numbers),
                                  labelText: 'Contact',
                                  hintText: 'Contact',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
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
                                onPressed: (){},
                                child: const Text('SIGN UP'),
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
