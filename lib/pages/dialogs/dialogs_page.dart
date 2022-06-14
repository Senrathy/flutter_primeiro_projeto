import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false, //clicar fora não fecha dialog
                      context: context,
                      builder: (context) {
                        return DialogCustom(context);
                      });
                },
                child: const Text('Dialog')),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Simple Dialog'),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Titulo X'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Fechar Dialog'),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirmação'),
                        content: SingleChildScrollView(
                          child: ListBody(children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('Deseja Salvar ou Sair?'),
                            ),
                          ]),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text(
                                            'Suas alterações foram salvas.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: const Text('Salvar')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Sair')),
                        ],
                      );
                    });
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
                onPressed: () async {
                  final selected = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('A hora retornada é: $selected'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Sair'))
                          ],
                        );
                      });
                },
                child: const Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selecionado = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('A data retornada é: $selecionado'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Sair'))
                        ],
                      );
                    },
                  );
                },
                child: const Text('Date Picker')),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.flutter_dash),
                );
              },
              child: const Text('Show About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
