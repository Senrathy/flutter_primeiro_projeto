import 'package:flutter/material.dart';

class StackPageCard extends StatelessWidget {
  const StackPageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Card'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://blog.movingimoveis.com.br/wp-content/uploads/2018/07/como-e-viver-em-sao-jose-do-rio-preto.jpeg'
                    // 'https://blog.austahospital.com.br/wp-content/uploads/2019/03/sao-jose-do-rio-preto-1.jpg',
                    ),
              ),
            ),
          ),
          Container(
            color: Colors.white12,
          ),
          Positioned(
            top: 30,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 12,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'São José do Rio Preto',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Emancipado de Jaboticabal na década de 1850, o nome do município é uma mistura entre o padroeiro, São José, e o Rio Preto, rio que passa pelo município. Hoje, é formada pelos distritos de Engenheiro Schmitt, São José do Rio Preto (Distrito-Sede) e Talhado, e subdivide-se em cerca de 360 bairros, loteamentos e residenciais.[8] É um dos principais polos industriais, culturais e de serviços do interior de São Paulo. Sua história econômica esteve por muito tempo ligada à cafeicultura, também presente em grande parte do estado de São Paulo, principalmente no início do século XX.',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
