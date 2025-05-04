import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {

  const RowsColumnPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Rows & Column'),),
        body: Container(
          width: 400,
          color: Color.fromARGB(255, 158, 255, 245),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  child: Column(children: [
                    Container(
                      color: Colors.lightBlue[200],
                      child: Text('Elemento1'),
                    ),
                      Text('Elemento2'),
                      Text('Elemento3'),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Text('25'),
                      Text(' '),
                      Text('Min'),
                      ],
                    )
                  ],),
                ),
              ],
            ),
          ),
      );
  }
}