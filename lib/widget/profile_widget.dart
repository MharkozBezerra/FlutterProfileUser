// ignore_for_file: sort_child_properties_last

// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  final bool isEdit;

  const ProfileWidget(
      {Key? key,
      required this.imagePath,
      required this.onClicked,
      this.isEdit = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            child: buildEditButton(color),
            bottom: 0,
            right: 4,
          )
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);
    // Aqui seria aimagem que recebe do servidor, onde ja sera trada e aredondada.
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }

  Widget buildEditButton(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit == false ? Icons.edit : Icons.camera_alt,
            size: 20,
            color: Colors.white,
          ),
        ),
      );

  Widget buildCircle(
          {required Widget child, required Color color, required double all}) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          decoration: BoxDecoration(
            color: color,
          ),
          child: child,
        ),
      );
}
