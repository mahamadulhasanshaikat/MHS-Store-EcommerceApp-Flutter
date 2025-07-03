import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mhs_store/utils/constants/text_strings.dart';
import 'package:mhs_store/utils/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class App extends StatelessWidget {
  const App({super.key});

  // The URL of your complete product
  static final Uri _productUri = Uri.parse(
    'https://codingwitht.com/ecommerce-app-with-admin-panel/',
  );

  Future<void> _launchProductLink() async {
    if (!await launchUrl(_productUri, mode: LaunchMode.externalApplication)) {
      // handle error, e.g. show snackbar
      debugPrint('Could not launch $_productUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: MhsTexts.appName,
      themeMode: ThemeMode.system,
      theme: MhsAppTheme.lightTheme,
      darkTheme: MhsAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '🎉 Awesome! Project structure is set up and running.\nHappy coding! 🎉',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, height: 1.4),
                ),
                const SizedBox(height: 32),
                ElevatedButton.icon(
                  onPressed: _launchProductLink,
                  icon: const Icon(Icons.shopping_cart_outlined),
                  label: const Text('Get the Full E-Commerce App'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
