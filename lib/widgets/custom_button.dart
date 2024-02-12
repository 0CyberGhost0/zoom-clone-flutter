import 'package:flutter/material.dart';
import 'package:zoom/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(
                  color: buttonColor,
                ),
              ),
              minimumSize: Size(double.infinity, 50)),
          // style: ButtonStyle(
          //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //     RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(0.0),
          //       side: BorderSide(color: Colors.blue),
          //     ),
          //   ),
          // ),
          child: Text(
            text,
            style: TextStyle(fontSize: 17, color: Colors.white),
          )),
    );
  }
}
