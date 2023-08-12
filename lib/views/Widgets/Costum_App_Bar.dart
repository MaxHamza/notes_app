import 'package:flutter/material.dart';
import 'package:untitled4/views/Widgets/Costum_Card.dart';
import 'package:untitled4/views/Widgets/Costum_Search_Icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:50.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0),
        child: Column(
          children:[
            Row(
              children:const [
                Text('Notes',style: TextStyle(
                 fontSize: 28,
               ),),
                Spacer(),
                SearchIcon(),
              ],
            ),
           const SizedBox(height: 10,),
           const CustomCard(),
          ],
        ),
      ),
    );
  }
}
