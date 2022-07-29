// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(context, '1200.0', 'Ataque'),
          buildDivider(),
          buildButton(context, '3200.0', 'Defesa'),
          buildDivider(),
          buildButton(context, 'Planta', 'Elemento'),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            )
          ],
        ),
        onPressed: () {},
      );

  // ignore: sized_box_for_whitespace
  Widget buildDivider() => Container(
        width: 24,
        child: const VerticalDivider(
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
      );
}
