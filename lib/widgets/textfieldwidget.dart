import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText,this.onChanged});
   Function(String)? onChanged;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return    TextFormField(
      validator: (data){
        if(data!.isEmpty){
          return "field is required";
        }


      },
      onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              

              
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                )

              )
            ),

          );
  }
}