import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoRoTe'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.purple[900],
                      child: Text(
                        'Sérgio Ricardo',
                        style: TextStyle(
                          color: Colors.amber[800],
                        ),
                      )),
                ),
                const Icon(Icons.access_alarm_rounded),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: const Size(50, 50),
                primary: Colors.red,
                padding: const EdgeInsets.all(20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black;
                      } else if (states.contains(MaterialState.hovered)) {
                        return Colors.deepOrange[700];
                      }
                      return Colors.purple;
                    },
                  ),
                  shadowColor: MaterialStateProperty.all(Colors.green)),
              child: const Text('Cororido'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return const Size(120, 60);
                } else if (states.contains(MaterialState.hovered)) {
                  return const Size(130, 140);
                }
                return const Size(120, 40);
              })),
              child: const Text('Tamain'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airplanemode_active),
              label: const Text('Modo Avião'),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shadowColor: Colors.red,
                minimumSize: const Size(120, 36),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            const SizedBox(
              width: 30,
              height: 30,
            ),
            GestureDetector(
              child: const Text('Gesto Detector'),
              onTap: () => print('Fui tapeado!'),
              onVerticalDragStart: (_) => print('Start: $_'),
            ),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  )
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
