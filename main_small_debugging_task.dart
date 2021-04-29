class MyHomePage extends StatefulWidget {
 int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of().size;
    
    Scaffold(
      body: Center(
        child: Text(text: '$_counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter();
      ),
    );
  }
}
