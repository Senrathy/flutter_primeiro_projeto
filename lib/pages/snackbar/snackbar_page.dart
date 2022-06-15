import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text('Usueiro Salvo com Sucesso'),
                    backgroundColor: Colors.purple[900],
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('Simple Snackbar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text('Usueiro Salvo com Sucesso'),
                    backgroundColor: Colors.purple[900],
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print('Clicado');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('Action Snackbar')),
          ],
        ),
      ),
    );
  }
}
