import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

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
                  final materialBanner = MaterialBanner(
                    contentTextStyle: const TextStyle(color: Colors.white),
                    content: const Text('Usueiro Salvo com Sucesso'),
                    backgroundColor: const Color.fromRGBO(255, 0, 255, 0.4),
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text('Entendi'),
                      ),
                    ],
                  );
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);
                },
                child: const Text('Material Banner')),
          ],
        ),
      ),
    );
  }
}
