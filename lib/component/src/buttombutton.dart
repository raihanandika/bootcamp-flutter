import 'package:flutter/material.dart';
import 'package:bootcamp_app/component/index.dart';

// CUSTOM REUSABLE WIDGET
class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.buttonTitle});

  final Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: Style.kLargeButtonTextStyle,
          ),
        ),
        color: Style.kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: Style.kBottomContainerHeight,
      ),
    );
  }
}
