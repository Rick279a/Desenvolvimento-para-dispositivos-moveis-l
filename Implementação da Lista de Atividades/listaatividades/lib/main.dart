import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(ListaTarefasApp());
}

class ListaTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaTarefasHomePage(),
    );
  }
}

class ListaTarefasHomePage extends StatefulWidget {
  @override
  _ListaTarefasHomePageState createState() => _ListaTarefasHomePageState();
}

class _ListaTarefasHomePageState extends State<ListaTarefasHomePage> {
  List<String> _tarefas = [];

  void _adicionarTarefa(String nomaTarefa) {
    setState(() {
      _tarefas.add(nomaTarefa);
    });
  }

  void _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  void _exibirFormulario() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController _controller = TextEditingController();
          return AlertDialog(
            title: Text('Adicionar Tarefa'),
            content: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Nome de Tarefa'),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  _adicionarTarefa(_controller.text);
                  Navigator.of(context).pop();
                },
                child: Text('Adicionar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: ListView.builder(
          itemCount: _tarefas.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(_tarefas[index]),
              onDismissed: (direction) {
                _removerTarefa(index);
              },
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20.0),
              ),
              child: ListTile(
                title: Text(_tarefas[index]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _exibirFormulario,
        tooltip: 'Adicionar Tarefa',
        child: Icon(Icons.add),
      ),
    );
  }
}
