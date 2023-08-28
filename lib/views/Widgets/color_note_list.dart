import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/constants/color.dart';
import 'package:untitled4/cubit/add_note_cubit.dart';
import 'package:untitled4/models/note_view_model.dart';
class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color,}) : super(key: key);
  final bool isActive;
  final  int color;

  @override
  Widget build(BuildContext context) {
        return isActive==true? CircleAvatar(
          backgroundColor:Colors.white,
          radius:38,
          child: CircleAvatar(
            backgroundColor: Color(color),
            radius: 34,
          ),
        ):  CircleAvatar(
          backgroundColor: Color(color),
          radius: 38,
        );
  }
  }

class ColorListItem extends StatefulWidget {
 const  ColorListItem({Key? key}) : super(key: key);

  @override
  State<ColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<ColorListItem> {
 int currentColor=0;
 List<int>color=kListColors;
  @override
  Widget build(BuildContext context) {
        return Container(
          height: 76,
          child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currentColor = index;
                  setState(() {});
                  BlocProvider.of<AddNoteCubit>(context).color=Color(color[index]);
                },
                child: ColorItem(isActive: currentColor == index ? true : false,
                  color: color[index],),),
            );
          },
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          ),
        );
      }
}
