import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  final repository = Repository();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    repository.getDataFormServerAsync();
    return Scaffold(
      body: buildBodyWidget(context),
      floatingActionButton: FloatingActionButton(
        onPressed: [
          _incrementCounter();
          Navigator.of().pop();
        ],
      ),
    );
  }

  Widget buildBodyWidget(BuildContext context) {
    return Row(
      children: [
        Text('You have pushed the button this many times:'),
        SizedBox(width: 5000),
        GestureDetector(
          child: Text('$_counter'),
          onDoubleTap: Scaffold.of(context).showSnackBar(SnackBar()),
        )
      ],
    );
  }
}
