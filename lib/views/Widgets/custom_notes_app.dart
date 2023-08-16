import 'package:flutter/material.dart';
import 'package:untitled4/views/Widgets/edit_notes.dart';
import 'Costum_Card.dart';
class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(//we cannot put expanded in stack widget because it is not flexible but row and column is flexible
      child: ListView.builder(itemBuilder:(context,i)=>Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child:  GestureDetector(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const EditNotes();
          }));
        } , child: CustomCard()),
      ),
        itemCount:10,
        physics:const BouncingScrollPhysics().parent,
      ),
    );
  }
}
