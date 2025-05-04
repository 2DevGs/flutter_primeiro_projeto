import 'package:flutter/material.dart';

class StorysAvatar extends StatelessWidget {

  final String urlImage = 'https://w7.pngwing.com/pngs/464/74/png-transparent-anchor-ship-anchor-angle-technic-logo-thumbnail.png';

  const StorysAvatar ({ Key? key,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return  Stack(
          children: [
            Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
             Color.fromARGB(255, 160, 7, 255),
             Color.fromARGB(255, 255, 0, 0),
             Color.fromARGB(255, 121, 3, 172),
             Color.fromARGB(255, 123, 0, 255),
             Color.fromARGB(255, 215, 208, 7),
             Color.fromARGB(255, 255, 0, 217)
            ]),
            borderRadius: BorderRadius.circular(100),
           // color: Color.fromARGB(255, 207, 200, 14),
            ),
         
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(urlImage),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                    Color.fromARGB(255, 255, 0, 230),
                    Color.fromARGB(255, 81, 0, 255),
                    Color.fromARGB(255, 121, 3, 172),
                    Color.fromARGB(255, 136, 0, 255),
                    Color.fromARGB(255, 215, 7, 208),
                      ],
                    ),
                  color: const Color.fromARGB(255, 106, 0, 125),
                  borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text('Ao Vivo', 
                    style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
  }
}

class StorysAvatar2 extends StatelessWidget {

  final String urlImage = 'https://www.islandbuddha.com.au/cdn/shop/products/IMG_1029_clipped_rev_1_2048x.jpg?v=1671669621';

  const StorysAvatar2 ({ Key? key,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return  Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 43, 0, 255),
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 121, 3, 172),
                Color.fromARGB(255, 255, 0, 89),
                Color.fromARGB(255, 215, 208, 7),
              ]),
              borderRadius: BorderRadius.circular(100),
              // color: Color.fromARGB(255, 207, 200, 14),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 36,
                height: 36,
                // color: Colors.green,
                decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(100),
                    ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                        Color.fromARGB(255, 255, 0, 234),
                        Color.fromARGB(255, 72, 11, 54),
                        Color.fromARGB(255, 121, 3, 172),
                        Color.fromARGB(255, 255, 0, 89),
                        Color.fromARGB(255, 80, 6, 67),
                        ],
                      ),
                      color: const Color.fromARGB(255, 106, 0, 125),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.live_tv_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
         
            ),
       
        
       
          ),
        ],
       );
  }
}


class StorysAvatar3 extends StatelessWidget {

  final String urlImage = 'https://anchorloja.com/cdn/shop/files/da_loja_e677a3b6-7cbe-4fef-ae4c-fe324e2c2395_155x@2x.png?v=1722133071';

  const StorysAvatar3 ({ Key? key,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return  Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 255, 0, 247),
                Color.fromARGB(255, 79, 6, 97),
                Color.fromARGB(255, 121, 3, 172),
                Color.fromARGB(255, 255, 0, 89),
                Color.fromARGB(255, 196, 7, 102),
              ]),
              borderRadius: BorderRadius.circular(100),
              // color: Color.fromARGB(255, 207, 200, 14),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ],
       );
  }
}
class StorysAvatar4 extends StatelessWidget {

  final String urlImage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQecFpcnP_eisTvpuFzcdDOtv7H8_0crutotg&s';

  const StorysAvatar4 ({ Key? key,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return  Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 255, 0, 247),
                Color.fromARGB(255, 235, 159, 6),
                Color.fromARGB(255, 121, 3, 172),
                Color.fromARGB(255, 255, 0, 89),
                Color.fromARGB(255, 196, 7, 102),
              ]),
              borderRadius: BorderRadius.circular(100),
              // color: Color.fromARGB(255, 207, 200, 14),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImage),
            ),
          ),
        ],
       );
  }
}