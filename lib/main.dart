import 'package:flutter/material.dart';
import 'package:mhs_store/utils/theme/theme.dart';

void main() {
  // todo : add widgets binding
  // todo : Init local storage
  // todo : Await native splash
  // todo : Initialize firebase
  // todo : Initial auth

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MhsAppTheme.lightTheme,
      darkTheme: MhsAppTheme.darkTheme,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
