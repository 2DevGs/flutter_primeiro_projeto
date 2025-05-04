import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {

  const SinglechildscrollviewPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Single Child Scroll View'),),
           body: SingleChildScrollView(
             child: Column(
               children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.grey,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.amberAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.red,
                ),
               ],
             ),
           ),
       );
  }
}