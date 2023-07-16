import 'package:flutter/material.dart';
void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
            children: [
              Positioned(
              left: 50,
              bottom: 20,
              child: FloatingActionButton(
                heroTag: 'back',
                onPressed: _decrementCounter,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.remove_sharp,
                  size: 40,
                ),
              ),
            ),
              Positioned(
                bottom: 20,
                right: 30,
                child: FloatingActionButton(
                  heroTag: 'next',
                  onPressed: _incrementCounter,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
          ],
      ),
    );
  }
}

/*FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/