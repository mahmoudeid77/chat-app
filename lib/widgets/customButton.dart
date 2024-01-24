import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.txt,  this.onTap});
  String txt;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: Center(child: Text(txt)),
            ),
    );
  }
}