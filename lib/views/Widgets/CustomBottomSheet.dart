import 'package:flutter/material.dart';
import 'package:untitled4/views/Widgets/CustomButtom.dart';
import 'package:untitled4/views/Widgets/customTextField.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:const Color(0xff312F31),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:28,horizontal:28),
        child: SingleChildScrollView(
          child: Column(
            children:const [
              CustomTextField(hintText:'title'),
             SizedBox(height: 16,),
              CustomTextField(hintText: 'content',maxLines: 5,),
              SizedBox(height: 16,),
             CustomButton(),
            ],
          ),

        ),
      ),
    );
  }
}
