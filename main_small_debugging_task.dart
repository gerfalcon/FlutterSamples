class MyHomePage extends StatefulWidget { //TODO: Missing state for StatefulWidget.
 int _counter = 0;

  void _incrementCounter() {
    setState() <= _counter++; //TODO: OMG.
  }

  @override
  Widget build(BuildContext context) {
    const size = MediaQuery.of().size; //TODO: Missing contect and can't be const.
    
    Scaffold( //TODO: Missing 'return'.
      body: Center(
        child: Text(text: '$_counter'), //TODO: Text doesn't have text property.
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter();
      ),
    );
  }
}
