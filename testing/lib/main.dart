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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

Future<String> callAsyncFetch() =>
    Future.delayed(Duration(seconds: 2), () => "Hi");

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: callAsyncFetch(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            String data = snapshot.data ?? 'default';
            return Scaffold(
              appBar: AppBar(
                title: Text("Testing"),
              ),
              body: Center(
                child : Text(data)
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
