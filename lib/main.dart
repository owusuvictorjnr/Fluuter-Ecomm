import 'package:ecomm/constants/global_variables.dart';
import 'package:ecomm/features/auth/screens/auth_screen.dart';
import 'package:ecomm/router.dart';
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
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0, //it removes something like shadow under the app bar.
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen());
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
