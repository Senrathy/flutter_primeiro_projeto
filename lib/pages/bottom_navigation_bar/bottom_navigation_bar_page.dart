import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigation_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigation_bar/page2.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 10.0,
        unselectedItemColor: Colors.white,
        currentIndex: indice,
        onTap: (index) {
          setState(
            () {
              indice = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Pagina 1',
            icon: Icon(
              Icons.person_add_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Pagina 2',
            icon: Icon(
              Icons.sign_language,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
