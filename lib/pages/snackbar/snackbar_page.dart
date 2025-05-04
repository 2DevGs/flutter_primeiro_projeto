import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {

  const SnackbarPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('SnackBars'),),
           body: Center(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    final snackbar = SnackBar(
                      content: Text('Usuário salvo com sucesso!!!'),
                      backgroundColor: Color.fromARGB(255, 199, 11, 233),
                    );
             
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, child: Text('Simple SnackBar'),),
                ElevatedButton(
                  onPressed: (){
                    final snackbar = SnackBar(
                      content: Text('Usuário salvo com sucesso!!!'),
                      backgroundColor: Color.fromARGB(255, 199, 11, 233),
                      action: SnackBarAction(label: 'Desfarzer', onPressed: (){
                        print('Clicado!!!');
                      }),
                    );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, child: Text('Action SnackBar'),),
              ],
             ),
           ),
       );
  }
}