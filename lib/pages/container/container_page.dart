import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  ContainerPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Exemplo de Container'),),
           body: Center(
             child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 20,
                      offset: Offset(-10, -10),
                    ),
                    BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: 20,
                      offset: Offset(10, 10),
                    ),
                  ],
                ),
              ),
           ),
       );
  }
}