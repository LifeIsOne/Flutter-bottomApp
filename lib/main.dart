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
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // 통신코드
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          Center(child: Text("First Page")),
          Center(child: Text("Second Page")),
          Center(child: Text("Third Page")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: "홈2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_friendly),
            label: "홈3",
          ),
        ],
        onTap: (i) {
          print("클릭됨 ${i}");
          _index = 1;
        },
      ),
    );
  }
}
