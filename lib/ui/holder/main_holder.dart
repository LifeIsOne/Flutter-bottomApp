import 'package:bottom_app/ui/holder/second/second_page.dart';
import 'package:bottom_app/ui/holder/third/third_page.dart';
import 'package:flutter/material.dart';

import 'first/first_page.dart';

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
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: _index,
        // 선택된 아이콘 색상표시
        items: [
          // item의 갯수는 최소 2개, 최대 5개
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "1"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "2"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "3"),
        ],
        onTap: (i) {
          print("클릭됨 ${i}");
          _index = i;
          setState(() {});
        },
      ),
    );
  }
}
