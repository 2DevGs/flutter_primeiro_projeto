import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {

  const BotoesRotacaoTextoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Botões e Toração de Texto'),),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.cyanAccent,
                          child: Text('Gustavo Dias')),
                        ),
                    Icon(Icons.ac_unit),
                    ],
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('Salvar'),
                    style: TextButton.styleFrom(
                      // backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: const Color.fromARGB(255, 255, 0, 0),
                      padding: EdgeInsets.all(10),
                      minimumSize: Size(50, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.exit_to_app),
                  ),
                  ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Salvar'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 8, 10, 10),
                        shadowColor: Colors.purple,
                        minimumSize: Size(120, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60),),
                        ),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                      onPressed: (){}, 
                      icon: Icon(Icons.airplane_ticket), 
                      label: Text('Modo Avião'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 8, 10, 10),
                        shadowColor: Colors.purple,
                        minimumSize: Size(120, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60),),
                        ),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Salvar'),
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all(Colors.blue),
                        // minimumSize: MaterialStateProperty.all(
                        //   Size(120, 50),
                        // ),
                        minimumSize: MaterialStateProperty.resolveWith((states){
                          if(states.contains(MaterialState.pressed)){
                            return Size(120, 150);
                          }else if(states.contains(MaterialState.hovered)){
                            return Size(180, 180);
                          }
                          return Size(120, 50);
                        }),
                        backgroundColor: MaterialStateProperty.resolveWith((states){
                          if(states.contains(MaterialState.pressed)){
                            return Colors.greenAccent;
                          }else if(states.contains(MaterialState.hovered)){
                            return Colors.amber;
                          }
                          return Colors.red;
                        })
                      ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text('InkWell'),
                  ),
                  GestureDetector(
                    child: Text('Gesture Detector'),
                    onTap: () => print('Gesture Clicado'),
                    onVerticalDragStart: (_) => print('Start $_'),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    decoration:  BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.cyanAccent, 
                          Colors.indigo
                          ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10, 
                              offset: Offset(0,5), 
                              color: Colors.lightBlueAccent,
                              ),
                          ],),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: (){},
                      child: Center(
                        child: Text('Botão Salvar', 
                        style: TextStyle(
                          color: Colors.purpleAccent
                          ),
                        ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
        );
  }
}