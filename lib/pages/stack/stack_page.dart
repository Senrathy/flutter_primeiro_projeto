import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 155,
            left: 115,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.yellow,
              width: 200,
              height: 150,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.green,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
