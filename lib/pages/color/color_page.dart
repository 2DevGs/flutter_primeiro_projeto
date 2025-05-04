import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {

  const ColorPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {

    final cor = Colors.purple;
    final cor2 = Colors.purple.withOpacity(0.1);
    final cor3 = Color.fromARGB(255, 4, 153, 4);
    final cor4 = Color(0XFF004f8c);
    final cor5 = Color(0XFF004f8c).withAlpha(200);
    final cor6 = Color(0XFF004f8c).withGreen(200);
    final cor7 = Color(0XFF004f8c).withBlue(200);

       return Scaffold(
           appBar: AppBar(title: const Text('Cores'),),
           body: Center(
             child: Container(
              width: 400,
              height: 400,
              color: cor4,
             ),
           ),
       );
  }
}