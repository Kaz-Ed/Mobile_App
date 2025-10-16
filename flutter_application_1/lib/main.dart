import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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

  void _printMessage() {
    print(123);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Демонстрация Flutter Виджетов'),
      ),
      body: Column(
        children: [
          // Первый Row с spaceEvenly
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Row с mainAxisAlignment: spaceEvenly',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 60,
                color: Colors.red[300],
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 60,
                color: Colors.green[300],
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 60,
                color: Colors.blue[300],
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Второй Row с spaceBetween
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Row с mainAxisAlignment: spaceBetween',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 70,
                color: Colors.orange[300],
                child: const Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 70,
                color: Colors.purple[300],
                child: const Center(
                  child: Text(
                    'End',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // CircleAvatar с NetworkImage
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'CircleAvatar с NetworkImage',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
          ),
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey[300],
            backgroundImage: const NetworkImage(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            ),
          ),

          const SizedBox(height: 20),

          // Expanded с основным контентом
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.grey[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Демонстрация виджетов',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  
                  const SizedBox(height: 15),
                  
                  Text(
                    'Счетчик: $_counter',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                 
                  const SizedBox(height: 20),
                  
                  Container(
                    width: 200,
                    height: 4,
                    color: Colors.blue[200],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
          _printMessage();
        },
        tooltip: 'Нажми меня',
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}