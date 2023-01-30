import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  const Listas({super.key});

  @override
  State<Listas> createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.ads_click),
              title: const Text('Elemento 1'),
            ),
            ListTile(
              leading: Icon(Icons.summarize),
              title: const Text('Elemento 2'),
            ),
            ListTile(
              leading: Icon(Icons.ads_click_sharp),
              title: const Text('Elemento 3'),
            ),
          ]),
        ));
  }
}
