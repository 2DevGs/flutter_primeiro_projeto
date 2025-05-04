import 'package:flutter/material.dart';

  enum PopupMenuPages{
    container,
    rows_columns,
    media_query,
    layout_builder,
    botoes_rotacao_texto,
    scrolls_single_child,
    scrolls_list_view,
    dialogs,
    snackbars,
    forms,
    cidades,
    stack,
    stack_page2,
    bottom_navigator_bar,
    circle_avatar,
    colors_page,
    material_banner,
    instagram,
    }

class HomePage extends StatelessWidget {

  HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Home Page'),
             actions: [
              PopupMenuButton<PopupMenuPages>(
                icon: Icon(Icons.architecture_outlined),
                tooltip: 'Selecione um Item do Menu',
                iconSize: 40,
                shadowColor: Color.fromARGB(255, 1, 136, 255),
                color: Color.fromARGB(255, 126, 176, 218),
                onSelected: (PopupMenuPages valueSelected) {
                  switch(valueSelected) {
                    case PopupMenuPages.container:
                      Navigator.of(context).pushNamed('/container');
                    break;
                    case PopupMenuPages.rows_columns:
                      Navigator.of(context).pushNamed('/rows_columns');
                    break;
                    case PopupMenuPages.media_query:
                      Navigator.of(context).pushNamed('/media_query');
                    break;
                    case PopupMenuPages.layout_builder:
                      Navigator.of(context).pushNamed('/layout_builder');
                    break;
                    case PopupMenuPages.botoes_rotacao_texto:
                      Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                    break;
                    case PopupMenuPages.scrolls_single_child:
                      Navigator.of(context).pushNamed('/scrolls/single_child');
                    break;
                    case PopupMenuPages.scrolls_list_view:
                      Navigator.of(context).pushNamed('/scrolls/list_view');
                    break;
                    case PopupMenuPages.dialogs:
                      Navigator.of(context).pushNamed('/dialogs');
                    break;
                    case PopupMenuPages.snackbars:
                      Navigator.of(context).pushNamed('/snackbars');
                    break;
                    case PopupMenuPages.forms:
                      Navigator.of(context).pushNamed('/forms');
                    break;
                    case PopupMenuPages.cidades:
                      Navigator.of(context).pushNamed('/cidades');
                    break;
                    case PopupMenuPages.stack:
                      Navigator.of(context).pushNamed('/stack');
                    break;
                    case PopupMenuPages.stack_page2:
                      Navigator.of(context).pushNamed('/stack_page2');
                    break;
                    case PopupMenuPages.bottom_navigator_bar:
                      Navigator.of(context).pushNamed('/bottomNavigatorBar');
                    break;
                    case PopupMenuPages.circle_avatar:
                      Navigator.of(context).pushNamed('/circle_avatar');
                    break;
                    case PopupMenuPages.colors_page:
                      Navigator.of(context).pushNamed('/colors');
                    break;
                    case PopupMenuPages.material_banner:
                      Navigator.of(context).pushNamed('/materialBanner');
                    break;
                    case PopupMenuPages.instagram:
                      Navigator.of(context).pushNamed('/instagram');
                    break;
                  }
                },
                itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child : Text('Container'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child : Text('Rows & Columns'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child : Text('Media Query'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child : Text('Layout Builder'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao_texto,
                    child : Text('Botoes & Rotação de Texto'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.scrolls_single_child,
                    child : Text('Scroll Single Child'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.scrolls_list_view,
                    child : Text('Scroll List View'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child : Text('Dialogs'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbars,
                    child : Text('SnackBars'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms,
                    child : Text('Forms'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades,
                    child : Text('Cidades'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack,
                    child : Text('Stack'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack_page2,
                    child : Text('Stack2'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottom_navigator_bar,
                    child : Text('NavigatorBar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.circle_avatar,
                    child : Text('Circle Avatar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.colors_page,
                    child : Text('Cores'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.material_banner,
                    child : Text('Material Banner'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.instagram,
                    child : Text('Instagram'),
                  ),
                ];
              }),
            ],
          ),
          body: Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Colors.red,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  ),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Botãozera'),
                  ),
                  ContainerX(),
                  Container(
                    width: 100,
                    height: 100,
                    color: Theme.of(context).primaryColor,
                  ),
                  Builder(
                    builder: (contextInterno){
                      return Container(
                        width: 100,
                        height: 100,
                        color: Theme.of(contextInterno).primaryColor,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
      );
  }
}

class ContainerX extends StatelessWidget {
  const ContainerX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 100,
            height: 100,
            color: Theme.of(context).primaryColor,
           );
}
}