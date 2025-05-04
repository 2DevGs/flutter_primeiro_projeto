import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {

  const FormsPage({ Key? key }) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categoria = 'Categoria1';

  @override
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Forms'),),
           body: SingleChildScrollView(
             child: Form(
               key: formKey,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  children: [
                    TextFormField(
                      controller: nameEC,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Nome Completo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 114, 2, 131))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 220, 0, 253))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 237, 121, 255))
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 2, 209, 255))
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        // isDense: true
                      ),
                      validator: (String? value) {
                        if(value == null || value.isEmpty) {
                          return 'Formulário não preenchido';
                        }
                      },
                    ),
                    SizedBox(height: 50,),
                    TextFormField(
                      // controller: nameEC,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 114, 2, 131))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 220, 0, 253))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 237, 121, 255))
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 2, 209, 255))
                        ),
                        labelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        isDense: true
                      ),
                      obscureText: true,
                      validator: (String? value) {
                        if(value == null || value.isEmpty) {
                          return 'Formulário não preenchido';
                        }
                      },
                    ),
                    SizedBox(height: 50,),
                    DropdownButtonFormField<String>(
                      value: categoria,
                      elevation: 50,
                      icon: Icon(Icons.arrow_back_ios),
                      decoration: InputDecoration(
                        labelText: 'Categorias',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 114, 2, 131))
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 220, 0, 253))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 237, 121, 255))
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color.fromARGB(255, 2, 209, 255))
                        ),
                      ),
                      validator: (String? value){
                        if(value == null || value.isEmpty){
                          return 'Categoria não preenchida';
                        }
                      },
                      onChanged: (String? newValue){
                        if(newValue != null){
                          setState(() {
                          categoria = newValue;
                          });
                        }
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'Categoria1',
                          child: Text('Categoria 1'),),
                        DropdownMenuItem(
                          value: 'Categoria2',
                          child: Text('Categoria 2'),),
                        DropdownMenuItem(
                          value: 'Categoria3',
                          child: Text('Categoria 3'),),
                      ],
                    ),

                    ElevatedButton(onPressed: (){
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Invalido';
                      if(formValid){
                        message = 'Formulário Válido (Nome: ${nameEC.text})';
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(message)));
                    }, child: Text('Salvar'),
                    ),
             
             
             
                    // TextField(
                    //   onChanged: (String value){
                    //     setState(() {
                    //       texto = value;
                    //     });
                    //   },
                    // ),
                    // SizedBox(height: 10,),
                    // Text('Texto digitado $texto'),
                  ],
                 ),
               ),
             ),
           ),
       );
  }
}