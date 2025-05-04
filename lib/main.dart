import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_projeto/pages/color/color_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/desafio/instagram_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/material_banner/material_banner_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page2.dart';
void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (_) => MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Primeiro Projeto',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // color: Color.fromARGB(255, 169, 32, 255),
          titleTextStyle: TextStyle(
            color: Colors.white),
        ),
        // scaffoldBackgroundColor: Color.fromARGB(255, 192, 147, 241),
        // dialogBackgroundColor: Color.fromARGB(255, 174, 0, 255),
        // primaryColorLight: Colors.cyanAccent,
        // primaryColorDark: Colors.blueAccent,
        // primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Color.fromARGB(255, 4, 133, 62),
          )
        )
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
        '/snackbars': (_) => SnackbarPage(),
        '/forms': (_) => FormsPage(),
        '/cidades': (_) => CidadesPage(),
        '/stack': (_) => StackPage(),
        '/stack_page2': (_) => StackPage2(),
        '/bottomNavigatorBar': (_) => BottomNavigatorBarPage(),
        '/circle_avatar': (_) => CircleAvatarPage(),
        '/colors': (_) => ColorPage(),
        '/materialBanner': (_) => MaterialBannerPage(),
        '/instagram': (_) => InstagramPage(),
      },
    );
  }
}