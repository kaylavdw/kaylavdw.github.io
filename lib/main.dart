import 'package:biblemazeweb/screens/privacy_policy_screen.dart';
import 'package:biblemazeweb/screens/welcome_screen.dart';
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
      title: 'BibleMaze',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          brightness: Brightness.dark,
          contrastLevel: 0,
        ),
        useMaterial3: true,
      ),
      //home: const WelcomeScreen(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const WelcomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/privacy': (context) => const PrivacyPolicyScreen(),
      },
    );
  }
}
