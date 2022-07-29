// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_user/model/user.dart';
import 'package:profile_user/utils/user_preference.dart';
import 'package:profile_user/widget/appbar_widget.dart';
import 'package:profile_user/widget/profile_widget.dart';
import 'package:profile_user/widget/textfield_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
              isEdit: true,
            ),
            const SizedBox(height: 24),
            TextFildeWidget(
              label: 'Nome Completo',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFildeWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFildeWidget(
              label: 'Sobre',
              maxLines: 5,
              text: user.about,
              onChanged: (about) {},
            )
          ],
        ),
      );
}
