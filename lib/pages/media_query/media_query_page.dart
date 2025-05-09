import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  
  const MediaQueryPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {

  final mediaQuery = MediaQuery.of(context);

  print('Largura ${mediaQuery.size.width}');
  print('Altura ${mediaQuery.size.height}');
  print('Orientação ${mediaQuery.orientation}');
  print('Padding TOP ${mediaQuery.padding.top}');
  print('Tamanho AppBarDefault $kToolbarHeight');

  var appBar = AppBar(
            title: const Text('MediaQuery'),
            backgroundColor : Colors.tealAccent[100],
            );

  final statusBar = mediaQuery.padding.top;
  final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

  print('Tamanho AppBar ${appBar.preferredSize.height}');          

       return Scaffold(
           appBar: appBar,
           body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                color: Colors.red[50],
                width: mediaQuery.size.width * .5,
                height: heightBody * .5,
                ),
                Container(
                color: Colors.blue[50],
                width: mediaQuery.size.width,
                height: heightBody * .5,
                ),
              ],
            ),
            ),
       );
  }
}