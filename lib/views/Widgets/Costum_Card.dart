import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      child: Card(
        color: Colors.white,
      child: Center(
        child: Container(
          width: 350,
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Flutter tips',style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),),

            ],
          ),
        ),
      ),
      ),
    );
  }
}
