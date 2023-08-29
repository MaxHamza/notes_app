import 'package:flutter/material.dart';
import '../../constants/color.dart';
import '../../models/note_view_model.dart';
import 'color_note_list.dart';

class EditColorListItem extends StatefulWidget {
 const EditColorListItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  State<EditColorListItem> createState() => _ColorListItemState();
}

class _ColorListItemState extends State<EditColorListItem> {
  late int currentColor;
  @override
  void initState(){
    currentColor=kListColors.indexOf(widget.note.color);
    super.initState();
  }
  List<int>color=kListColors;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: GestureDetector(
            onTap: () {
              currentColor = index;
              widget.note.color=kListColors[index];
              widget.note.save();
              setState(() {});
            },
            child: ColorItem(isActive: currentColor == index ? true : false,
              color: color[index],),),
        );
      },
        itemCount:kListColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
