import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My app Bar')
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: (){},
              child: const Text('LOGOUT')
            ),
          ),
        )
    );
  }
}