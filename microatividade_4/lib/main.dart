import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile e ListView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                title: Text('Flutter'),
                subtitle: Text('Tudo é um widget'),
                leading: Icon(Icons.flash_on),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            SizedBox(height: 20.0), // Adiciona um espaço entre os containers
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Flutter'),
                    subtitle: Text('Tudo é um widget'),
                    leading: Icon(Icons.flash_on),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text('Dart'),
                    subtitle: Text('É fácil'),
                    leading: Icon(Icons.mood),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text('Firebase'),
                    subtitle: Text('Combina com Flutter'),
                    leading: Icon(Icons.whatshot),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
