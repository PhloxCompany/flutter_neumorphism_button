import 'package:flutter/material.dart';

import 'neumorphism_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphismButton(
              child: const Text("Press Me"),
              onPressed: (){
                print('clicked!');
              },
            ),
            NeumorphismButton(
              child: const Icon(Icons.home),
              onPressed: (){
                print('clicked!');
              },
            ),
            NeumorphismButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                   Icon(Icons.notifications),
                  SizedBox(width: 12,),
                  Text("Notifications")
                ],
              ),
              onPressed: (){
                print('clicked!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

