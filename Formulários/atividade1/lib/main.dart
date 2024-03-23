import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Pets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CadastroScreen(),
    );
  }
}

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _observationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pets'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome do Pet',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _contactController,
              decoration: InputDecoration(
                labelText: 'Contato',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Endereço',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Telefone',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: 'Cidade',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _observationController,
              decoration: InputDecoration(
                labelText: 'Observação',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para processar o cadastro
                String name = _nameController.text;
                String contact = _contactController.text;
                String address = _addressController.text;
                String phone = _phoneController.text;
                String city = _cityController.text;
                String observation = _observationController.text;

                // Aqui você pode enviar os dados para onde quiser, como uma API, por exemplo
                print(
                    'Nome do Pet: $name, Contato: $contact, Endereço: $address, Telefone: $phone, Cidade: $city, Observação: $observation');
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
