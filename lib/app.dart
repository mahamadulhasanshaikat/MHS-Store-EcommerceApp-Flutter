import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mhs_store/features/authentication/screens/onboarding_screen.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'package:mhs_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: MhsTexts.appName,
      themeMode: ThemeMode.system,
      theme: MhsAppTheme.lightTheme,
      darkTheme: MhsAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,

      home: OnboardingScreen(),
    );
  }
}
