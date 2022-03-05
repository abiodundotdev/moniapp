import 'package:flutter/material.dart';
import 'package:monitest/screens/screens.dart';
import 'package:monitest/screens/secondary_preloader.dart';
import 'constants/constants.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MONI',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
