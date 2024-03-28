import 'package:flutter/material.dart';
import 'package:sementes_ufes/quiz.page.dart';
import 'package:sementes_ufes/introdution.screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool shouldShowIntro = !(prefs.getBool('skipIntro') ?? false);

  runApp(MyApp(shouldShowIntro: shouldShowIntro));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final bool shouldShowIntro;
  const MyApp({Key? key, required this.shouldShowIntro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo IPB Alegre',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: shouldShowIntro ? IntroductionScreenPage() : QuizPage(),
    );
  }
}
