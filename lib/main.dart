import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yuri Grj',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yuri & Moon Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Yuri&Moon"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(71),
              topRight: Radius.circular(21),
              bottomRight: Radius.circular(21)),
          child:
              Container(
                color: Colors.deepPurple,
            width: 400,
            height: 200,
          ),
        ),
      ),
    );
  }
}
