import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
      color:Color(0xffFFCA7B),
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:24,bottom: 24,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            ListTile(
              title:const Text('Flutter tips',style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              subtitle:const Padding(
                padding:  EdgeInsets.symmetric(vertical:10.0),
                child:  Text('''Build your career with 
hamza max''',style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),),
              ),
              trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete_rounded,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text('August,13/2023',style: TextStyle(color: Colors.black.withOpacity(.54),fontSize: 12),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
