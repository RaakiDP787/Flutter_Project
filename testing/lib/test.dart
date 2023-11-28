import 'package:flutter/material.dart';

Future<String> callAsyncFetch() =>
    Future.delayed(Duration(seconds: 2), () => "Hi");

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late Future<String> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = callAsyncFetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
      ),
      body: Center(child: Text()),
    );
  }
}
