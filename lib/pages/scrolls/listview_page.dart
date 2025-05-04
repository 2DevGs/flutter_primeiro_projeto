import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {

  const ListviewPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('List View'),),
           body: ListView.separated(
            itemCount: 1000,
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.blue,
                // thickness: 10,
              );
            },
            itemBuilder: (context, index) {
              print('Carregando Índice $index');
              return ListTile(
                title: Text('Indice $index'),
                subtitle: Text('Flutter é TOP'),
                leading: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/BigDashAndLittleDash.png'),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.cyan,
                ),
              );
            },
            ),
       );
  }
}