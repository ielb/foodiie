import 'package:flutter/material.dart';
import 'package:foodiie/screens/SignIn.dart';
import 'package:foodiie/screens/gettingStaretd_pages.dart';
// import 'package:foodiie/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        
        '/GettingStartedone': (context) => GettingStartedone(),
        '/GettingStartedTwo': (context) => GettingStartedTwo(),
        '/GettingStartedThree': (context) => GettingStartedThree(),
        '/SignIn' :(context) => GettingStartedone(),
        // '/SignUp' :(context) => SignUp(),
        
      },
      debugShowCheckedModeBanner: false,
      home:SignIn(),
    );
  }
}
