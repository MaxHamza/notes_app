import 'package:flutter/material.dart';
class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

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
        child:const Center(child:Icon(Icons.search_rounded,size:40,)),

      ),
    );
  }
}
