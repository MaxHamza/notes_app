import 'package:flutter/material.dart';
import 'package:untitled4/constants/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hintText,this.maxLines=1}) : super(key: key);
 final String hintText;
 final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText:hintText,
        hintTextDirection: TextDirection.ltr,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        border: buildOutlineInputBorder(),
        enabledBorder:buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]){
  return  OutlineInputBorder(
    borderSide: BorderSide(
      color:color??Colors.white,
    ),
   borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  }
}
