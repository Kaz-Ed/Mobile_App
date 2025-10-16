import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Widgets'),
      ),
      body: Column(
        children: [
          // Row с разноцветными Container и Text
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
                child: const Text('1'),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
                child: const Text('2'),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Text('3'),
              ),
            ],
          ),

          // Expanded с CircleAvatar
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Счетчик: $_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}