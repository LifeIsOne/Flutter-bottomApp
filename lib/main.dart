import 'package:bottom_app/ui/holder/main_holder.dart';
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
