import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key,required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 46,
        height: 46,
        decoration:BoxDecoration(
          color: Colors.white.withOpacity(0.05),
         borderRadius:const BorderRadius.all(Radius.circular(16)),
        ),
        child:Center(child:Icon(icon,size:40,)),

      ),
    );
  }
}
