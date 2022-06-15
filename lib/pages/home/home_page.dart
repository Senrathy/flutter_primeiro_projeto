import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacao,
  singleChildScrollView,
  listView,
  dialogs,
  snackbar,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              icon: const Icon(Icons.accessibility_new),
              tooltip: 'Selecione um item do Menu',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rowsColumns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopupMenuPages.mediaQuery:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopupMenuPages.layoutBuilder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.botoesRotacao:
                    Navigator.of(context).pushNamed('/bot_rotacao');
                    break;
                  case PopupMenuPages.singleChildScrollView:
                    Navigator.of(context).pushNamed('/singlechildscrollview');
                    break;
                  case PopupMenuPages.listView:
                    Navigator.of(context).pushNamed('/listview');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogs');
                    break;
                  case PopupMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackbar');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rowsColumns,
                    child: Text('Rows n Columns'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.mediaQuery,
                    child: Text('Media Query'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutBuilder,
                    child: Text('Layout Builder'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoesRotacao,
                    child: Text('Botoes Rotação Texto'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.singleChildScrollView,
                    child: Text('SingleChildScrollView'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listView,
                    child: Text('ListView'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar,
                    child: Text('Snackbar'),
                  )
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
