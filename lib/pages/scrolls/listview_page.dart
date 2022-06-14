import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: //ListView.builder(
          ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 10,
          );
        },
        itemCount: 1000,
        itemBuilder: (context, index) {
          print('Carregando o índice $index');
          return ListTile(
            title: Text('Índice $index'),
            subtitle: const Text('Flutter é Top!'),
            leading: const CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
            ),
            trailing: const CircleAvatar(
              backgroundColor: Colors.amber,
            ),
          );
        },
      ),
    );
  }
}
