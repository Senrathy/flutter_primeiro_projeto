import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print('Orientação ${mediaQuery.orientation}');
    print('Padding Top ${mediaQuery.padding.top}');
    print('Tamanho AppBarDefault ${kToolbarHeight}');

    var appBar = AppBar(
      title: Text('MediaQuery'),
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody =
        mediaQuery.size.height - statusBar - kToolbarHeight;

    print('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lime,
            width: mediaQuery.size.width * .5,
            height: heightBody / 2,
          ),
          Container(
            color: Colors.purple[900],
            width: mediaQuery.size.width,
            height: heightBody / 2,
          ),
        ],
      )),
    );
  }
}
