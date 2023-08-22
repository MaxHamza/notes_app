import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomButtom.dart';
import 'customTextField.dart';
class FormWidget extends StatefulWidget {
  const FormWidget({Key? key,}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState>formKey=GlobalKey();
  String ?title,subtitle;
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children:[
          CustomTextField(hintText:'title',onSaved:(value){
            title=value;
          } ,),
          const SizedBox(height: 16,),
          CustomTextField(hintText: 'content',maxLines: 5,onSaved:(value){
            subtitle=value;
          },),
          const  SizedBox(height: 16,),
          CustomButton(onTap:(){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }
            else{
              autoValidateMode=AutovalidateMode.always;
              setState(() {});
            }
          })
        ],
      ),
    );
  }
}
