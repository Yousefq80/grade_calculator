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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GPA(),
    );
  }
}

class GPA extends StatelessWidget {
  GPA({Key? Key}) : super(key: Key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Type your score',
                prefixIcon: Icon(Icons.percent),
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('Calculate'),
                onPressed: () {
                  print("${controller.text}%");
                  controller.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
