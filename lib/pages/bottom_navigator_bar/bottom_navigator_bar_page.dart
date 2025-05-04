import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {

  const BottomNavigatorBarPage({ Key? key }) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {

  int indice = 0;

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Bottom NavigatorBar'),),
           bottomNavigationBar: BottomNavigationBar(
            iconSize: 50,
            fixedColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
            // currentIndex: indice,
            // onTap: (index) {
            //   setState(() {
            //     indice = index;
            //   });
              // print(index);
            // },
            items: [
              BottomNavigationBarItem(
                label: 'Pagina 1',
                icon: Icon(Icons.add_a_photo_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Pagina 2',
                icon: Icon(Icons.accessibility_new),
              ),
            ],
           ),
          //  body: IndexedStack(
          //   index: indice,
          //   children: [
          //     Page1(),
          //     Page2(),
          //   ],
          //  ),
       );
  }
}