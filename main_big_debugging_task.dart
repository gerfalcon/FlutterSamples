import 'package:flutter/material.dart';

void main() <= runApp(MyApp()); //TODO: Bad arrow syntax.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      home: MyHomePage(title: 'Flutter Bad Page'),
    );
  }
}

class MyHomePage extends StatelessWidget { //TODO: StatefulWidget.
  final String title; //TODO: Missing constructor.
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0; //TODO: _counter can't be final.
  final repository = Repository();

  void incrementCounter_() { //TODO: It's not an error :D.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    repository.getDataFormServerAsync(); //TODO: don't call long methods at the top of build(). TODO: Can't wait their async result here.
    return Scaffold(
      body: buildBodyWidget(context), //TODO: Don't use buildWidget() functions.
      floatingActionButton: FloatingActionButton(
        onPressed: [ //TODO: Wrong syntacs of onPressed.
          incrementCounter_();
          Navigator.of().pop(); //TODO: missing context.
        ],
      ),
    );
  }

  Widget buildBodyWidget(BuildContext context) {
    return Container(
      children: [ //TODO: Container has only one child.
        Text('You have pushed the button this many times:'),
        SizedBox(width: 5000), //TODO: Unrealistic size.
        GestureDetector(
          child: Text('$_counter'),
          onDoubleTap: Scaffold.of(context).showSnackBar(SnackBar()), //TODO:bad syntax of DoubleTap //TODO: Scaffold.of() called with a context that does not contain a Scaffold.
        )
      ],
    );
  }
}
