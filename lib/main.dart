import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainHolder(),
    );
  }
}

// 이 화면에 다중 페이지를 구성할 수 있겠군~?
class MainHolder extends StatefulWidget {
  const MainHolder({
    super.key,
  });

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          Center(child: Text("First Page")),
          Center(child: Text("Second Page")),
          Center(child: Text("Third Page")),
        ],
      ),
    );
  }
}
