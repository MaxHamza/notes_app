import 'package:flutter/material.dart';
import 'package:untitled4/constants/color.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius:const BorderRadius.all(Radius.circular(8))
      ),
      child:const Center(
        child: Text('Add',
          style: TextStyle(
              fontSize: 20,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}