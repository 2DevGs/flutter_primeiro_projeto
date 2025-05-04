import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  
  const LayoutBuilderPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
          appBar: AppBar(
            title: const Text('LayoutBuilder'),
            backgroundColor : Colors.tealAccent[100],
            ),
          body: Center(
            child: LayoutBuilder(
              
              builder: (context, constraints){
                return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * .5,
                  ),
                  Container(
                    color: Colors.blue[50],
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2,
                  ),
                ],
              );
              }
            ),
          ),
       );
  }
}