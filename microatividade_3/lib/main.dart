import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: const Text(
              'Exemplo de Layout',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 236, 108, 3),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomColumn(
                  iconData: Icons.call,
                  text: 'Chamada',
                  color: Colors.blue,
                ),
                CustomColumn(
                  iconData: Icons.directions,
                  text: 'Rota',
                  color: Colors.green,
                ),
                CustomColumn(
                  iconData: Icons.share,
                  text: 'Compartilhar',
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;

  const CustomColumn({
    Key? key,
    required this.iconData,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: 50,
          color: color,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 16, color: color),
        ),
      ],
    );
  }
}
