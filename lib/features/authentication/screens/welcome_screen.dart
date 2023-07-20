import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Use BuildEz Products',
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
                Text(
                    "Let's use BuildEz products to improve your daily brushing habits",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: (){},
                    child: const Text('LOGIN')
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: const Text('SIGN UP')
                )
              ],
            )
          ],
        )
      )
    );
  }
}
