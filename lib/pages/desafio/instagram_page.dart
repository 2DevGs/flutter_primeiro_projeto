import 'package:flutter/material.dart';
// import 'package:flutter_primeiro_projeto/pages/desafio/instagram_appbar.dart';
import 'package:flutter_primeiro_projeto/pages/desafio/storyavatar.dart';

class InstagramPage extends StatelessWidget {

  const InstagramPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Material(
        color: const Color.fromARGB(0, 255, 255, 255),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              //  alignment: Alignment.topCenter,
              children: [
                // InstagramAppbar(),
                Positioned(
                  top: 206,
                  child: Container(
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * 0.07,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    child: const Row(
                      children: [
                        Padding(padding: EdgeInsets.all(6)),
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://anchorloja.com/cdn/shop/files/da_loja_e677a3b6-7cbe-4fef-ae4c-fe324e2c2395_155x@2x.png?v=1722133071',scale: 0.1),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Anchor',
                        style: TextStyle(
                          // decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10,
                        ),
                        )
                      ],
                    ),
                    ),
                  ),
                Positioned(
                    top: 206,
                    child: Container(
                      alignment: Alignment.centerRight,
                      width: constraints.maxWidth * 1,
                      height: constraints.maxHeight * 0.07,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.align_horizontal_right),
                        color: Colors.white,
                        alignment: Alignment.centerRight,
                        ),
                    ),
                ),
                Positioned(
                  top: 262,
                  child: SizedBox(
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * 0.4,
                    child: Image.network(
                      'https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-el-calafate-capa2019-01-820x430.jpg',
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                  top: 595,
                  left: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.heart_broken_sharp),
                        color: Colors.white,
                        iconSize: 38,
                        ),
                        IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.comment_outlined),
                        color: Colors.white,
                        iconSize: 38,
                        ),
                        IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.send),
                        color: Colors.white,
                        iconSize: 38,
                        ),
                    ],
                  ),
                ),
                Positioned(
                  top: 595,
                  right: 5,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.all_inbox_rounded),
                    color: Colors.white,
                    iconSize: 38,
                  ),
                ),
                Positioned(
                  top: 650,
                  left: 25,
                  child: Row(
                    children: [
                      DefaultTextStyle.merge(
                        style: const TextStyle(
                          // decoration: TextDecoration.none,
                          // fontStyle: FontWeight.bold,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12,
                        ), 
                      child: const Text(
                        'Anchor',
                      ),
                      ),
                      const Padding(padding: EdgeInsets.all(8)),
                    ],
                  ),
                ),
                Positioned(
                  top: 653,
                  left: 80,
                  child: SizedBox(
                    width: constraints.maxWidth * 0.75,
                    child: DefaultTextStyle.merge(
                      style: const TextStyle(
                        // decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        textBaseline: TextBaseline.alphabetic,
                      ), 
                        child: const Text(
                          'A milior de lo estado de Brasil, com vendas especializadas na chaina e em todo o world aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                          // overflow: TextOverflow.fade,
                        ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 730,
                  left: 25,
                  child: Text(
                    'Ver todos os comentários',
                    style: TextStyle(
                      // decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 109, 109, 109),
                      fontSize: 10
                    ),
                  ),
                ),
                Container(
                  width: constraints.maxWidth * 1,
                  height: constraints.maxHeight * 0.25,
                  decoration: const BoxDecoration(boxShadow:[
                    BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(72, 255, 255, 255),
                    ),
                    ],
                  color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth * 1,
                  height: constraints.maxHeight * 0.245,
                    child: SingleChildScrollView(
                      scrollDirection: axisDirectionToAxis(AxisDirection.right),
                      child: const Row(
                         children: [
                          SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar3(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar2(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar2(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar2(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                           Align(
                             alignment: Alignment.bottomLeft,
                             child: StorysAvatar4(),
                           ),
                           SizedBox(
                            width: 5,
                           ),
                          ],
                        ),
                    ),
                   ),
                  const Positioned(
                    top: 42,
                    left: 25,
                    child: Text('Instagram',
                      style: TextStyle(
                      fontFamily: 'Courgette',
                      // decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 28,
                    ),
                    ),
                  ),
                  Positioned(
                    top: 37,
                    right: 10,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.add_box_outlined), 
                          iconSize: 25, 
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.heart_broken_outlined), 
                          iconSize: 25, 
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: (){}, 
                          icon: const Icon(Icons.message_rounded), 
                          iconSize: 25, 
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 20,
                    child: SizedBox(
                      width: constraints.maxWidth * 1,
                      height: 60,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon(Icons.home_filled),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          const Padding(padding: EdgeInsets.all(14)),
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon(Icons.search),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          const Padding(padding: EdgeInsets.all(14)),
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon(Icons.add_box_outlined),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          const Padding(padding: EdgeInsets.all(14)),
                          IconButton(
                            onPressed: (){}, 
                            icon: const Icon(Icons.ondemand_video_rounded),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          const Padding(padding: EdgeInsets.all(14)),
                          const CircleAvatar(
                            backgroundImage: NetworkImage('https://anchorloja.com/cdn/shop/files/da_loja_e677a3b6-7cbe-4fef-ae4c-fe324e2c2395_155x@2x.png?v=1722133071',
                            scale: 0.1
                          ),
                        ),
                        ],
                      ),
                    ),
                  ),
               ],
             );
             
          },
        ),
      );
  }
}

