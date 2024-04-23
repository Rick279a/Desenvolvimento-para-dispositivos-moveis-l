import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Dados de usuário e senha fixos para validação
const String usuarioValido = '100nome';
const String senhaValida = '100senha';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  String? _mensagemErro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _usuarioController,
                decoration: InputDecoration(
                  labelText: 'Usuário',
                ),
              ),
              TextField(
                controller: _senhaController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
                obscureText: true,
              ),
              if (_mensagemErro != null)
                Text(
                  _mensagemErro!,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final usuario = _usuarioController.text;
                  final senha = _senhaController.text;
                  if (usuario == usuarioValido && senha == senhaValida) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(usuario: usuario),
                      ),
                    );
                  } else {
                    setState(() {
                      _mensagemErro = 'Usuário ou senha inválidos';
                    });
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String usuario;

  HomeScreen({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo, $usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Login feito com sucesso !!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Retorna para a tela anterior (login)
              },
              child: Text('desconectar'),
            ),
          ],
        ),
      ),
    );
  }
}
