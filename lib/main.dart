// ignore_for_file: prefer_const_declarations

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:profile_user/page/edit_profile.dart';
import 'package:profile_user/page/profile_page.dart';
import 'package:profile_user/theme.dart';
import 'package:profile_user/utils/user_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(StartScreen());
}

// ignore: duplicate_ignore
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  static final String titulo = 'Profile User';
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
        initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.ligthTheme,
        builder: (context, MyThemes) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyThemes,
            title: titulo,
            home: const ProfilePage(),
          );
        });
  }
}
