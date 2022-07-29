import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_user/theme.dart';

AppBar buildAppBar(BuildContext context) {
  const icon = CupertinoIcons.moon_stars;
  final isDarkMode = Theme.of(context).brightness == Brightness.dark;

  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: const Icon(
            icon,
            color: Colors.black,
          ),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.darkTheme : MyThemes.ligthTheme;
            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);
          },
        ),
      ),
    ],
  );
}
