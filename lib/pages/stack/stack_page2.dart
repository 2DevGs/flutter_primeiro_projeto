import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {

  const StackPage2({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
            title: const Text(
              'Stack 2',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
              ),
            backgroundColor: Colors.white,
            ),
           body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.viajaquepassa.com.br/wp-content/uploads/2021/02/torre-eiffel-paris.png',
                      ),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 48,
                child: Card(
                  elevation: 20,
                  color: Color.fromARGB(184, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Anchor',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Anchor text (ou texto âncora) é o texto clicável que aparece em um hiperlink. Esse recurso foi criado para se destacar do restante do texto e para que os usuários saibam que aquele fragmento do conteúdo possui um link que pode ser clicado. É por isso que, geralmente, ele tem uma cor diferente do texto normal e outros elementos estilísticos, como sublinhado. O anchor text deve indicar aos usuários para que tipo de página eles serão direcionados se clicarem naquele link.',
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
           ),
       );
  }
}