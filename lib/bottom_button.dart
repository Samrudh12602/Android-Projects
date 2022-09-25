import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        color: (bottomContainerColour),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomcontainerheight,
      ),
    );
  }
}
