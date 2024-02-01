import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(home: StatelessWidgetExemplo("Olá Flutter - MaterialApp")));
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String _appBarTitle;

  StatelessWidgetExemplo(this._appBarTitle) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        backgroundColor: Color.fromARGB(255, 6, 232, 168),
      ),
      body: const Center(
        child: Text('Desenvolvedor Full Stack'),
      ),
    );
  }
}
