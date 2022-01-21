import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {Key? key, required this.calculateText, required this.onTap})
      : super(key: key);
  final String calculateText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            calculateText,
            style: kLargeButtonStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
