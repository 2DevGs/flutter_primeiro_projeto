import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {

  const CircleAvatarPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Circle Avatar'),
           ),
           body: Row(
            children: [
              // Container(
              //   width: 100,
              //   height: 100,
              //   child: CircleAvatar(
                  // backgroundImage: NetworkImage('https://www.islandbuddha.com.au/cdn/shop/products/IMG_1029_clipped_rev_1_2048x.jpg?v=1671669621'),
                  // backgroundImage: NetworkImage('https://www.islandbuddha.com.au/cdn/shop/products/IMG_1029_clipped_rev_1_2048x.jpg?v=1671669621'),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ImageAvatar(urlImage: 'https://www.islandbuddha.com.au/cdn/shop/products/IMG_1029_clipped_rev_1_2048x.jpg?v=1671669621'),
              ),
              
              ImageAvatar(urlImage: 'https://w7.pngwing.com/pngs/464/74/png-transparent-anchor-ship-anchor-angle-technic-logo-thumbnail.png'),
            ],
           ),
       );
  }
}

class ImageAvatar extends StatelessWidget {

  final String urlImage;

  const ImageAvatar ({ Key? key, required this.urlImage}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return  Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 98, 5, 115),
                Colors.purpleAccent,
              ]),
              borderRadius: BorderRadius.circular(100),
              color: Colors.purple,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // begin: Alignment.topCenter,
                    colors: [
                    const Color.fromARGB(255, 129, 3, 151),
                    Colors.purpleAccent,
              ],
            ),
                  // color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(5),
                ),

                child: Text('AO VIVO', style: TextStyle(fontSize: 8),),
              ),
            ),
          ),
        ],
       );
  }
}