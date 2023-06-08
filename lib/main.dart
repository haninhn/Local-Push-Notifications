import 'package:flutter/material.dart';

import 'GradientButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ' Local Notification'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text(
              'Local Notifications',
            ),
            const SizedBox(height: 19,),
            GradientButton(
              text: 'Simple Notification',
              gradientColors: const [Colors.purpleAccent, Colors.blue],
              onPressed: () {
                print('soon');
              },
            ),
            const SizedBox(height: 19,),

            GradientButton(
              text: 'Scheduled Notification',
              gradientColors: const [Colors.blue, Colors.purple],
              onPressed: () {
                print('soon');
              },
            ),
            const SizedBox(height: 19,),
            GradientButton(
              text: 'Remove Notifications',
              gradientColors: const [Colors.pinkAccent, Colors.lightBlueAccent],
              onPressed: () {
                print('soon');
              },
            ),

          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
