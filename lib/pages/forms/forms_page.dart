import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  var nameEC = TextEditingController();
  var senhaEC = TextEditingController();
  String categoria = 'Cat1';

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // TextField(
              //   onChanged: (String value) {
              //     setState(
              //       () {
              //         texto = value;
              //       },
              //     );
              //   },
              // ),
              // const SizedBox(height: 10,),
              // Text('Texto digitado: $texto'),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nameEC,
                maxLines: null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo não preenchido';
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Nome completo',
                  labelStyle: const TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: senhaEC,
                maxLines: 1,
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo não preenchido';
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: const TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amber),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 10,),
              DropdownButtonFormField<String>(
                elevation: 16,
                icon: Icon(Icons.arrow_drop_down_circle_outlined),
                isDense: true,
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                items: [
                  const DropdownMenuItem(
                    value: 'Cat1',
                    child: Text('Categoria 1'),
                  ),
                  const DropdownMenuItem(
                    value: 'Cat2',
                    child: Text('Categoria 2'),
                  ),
                  const DropdownMenuItem(
                    value: 'Cat 3',
                    child: Text('Categoria 3'),
                  ),
                ],
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Categoria não preenchida';
                  }
                },
                value: categoria,
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      categoria = newValue;
                    });
                  }
                },
                hint: const Text('Nada de interessante'),
                borderRadius: BorderRadius.circular(30),
              ),
              ElevatedButton(
                  onPressed: () {
                    var validate = formKey.currentState?.validate() ?? false;
                    var message = 'Formulário Inválido!';
                    if (validate) {
                      message = 'Formulário Válido (Nome: ${nameEC.text})';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                      ),
                    );
                  },
                  child: const Text('Salvar')),
            ],
          ),
        ),
      ),
    );
  }
}
