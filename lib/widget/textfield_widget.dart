// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFildeWidget extends StatefulWidget {
  final String label;
  final String text;
  final int maxLines;
  final ValueChanged<String> onChanged;
  const TextFildeWidget(
      {Key? key,
      this.maxLines = 1,
      required this.label,
      required this.text,
      required this.onChanged})
      : super(key: key);

  @override
  State<TextFildeWidget> createState() => _TextFildeWidgetState();
}

class _TextFildeWidgetState extends State<TextFildeWidget> {
  late final TextEditingController controller;

  // Quando inciar
  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  // Quando finalizar
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      );
}
