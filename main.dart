import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Key parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty Parlour App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                const Text('Button Pressed! 💬');
              },
              child: const Text('Click Me!'),
            ),
            const SizedBox(height: 20),
            Image.network(
                'https://www.pexels.com/photo/white-and-black-spray-bottle-8467960/', //  image URL
                height: 150,
                width: 150,
                fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
