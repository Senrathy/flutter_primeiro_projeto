import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows n Columns'),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            const Text('Elemento 1'),
            const Text('Elemento 2'),
            const Text('Elemento 3'),
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Elemento 1'),
                  const Text('Elemento 2'),
                  const Text('Elemento 3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
