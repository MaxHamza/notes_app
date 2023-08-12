import 'package:flutter/material.dart';

import 'Widgets/Costum_App_Bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   body: CustomAppBar()
     );
  }
}
