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
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text('Vitech Ecomm'),
        ),
      ),
    );
  }
}

// class Scaffold extends StatelessWidget {
//   const Scaffold({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Text('Flutter Demo Home Page');
//   }
// }
