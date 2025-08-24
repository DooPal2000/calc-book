import 'package:flutter/material.dart';
import 'widgets_note.dart'; // 스터디 노트 위젯 가져오기
import 'layout_attributes_note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold로 전체 레이아웃 잡기 추천
        appBar: AppBar(
          backgroundColor: Colors.lightBlue, // ✅ AppBar 배경색
          title: Text(
            'calc_book',
            style: TextStyle(
              color: Colors.white, // ✅ 텍스트 색상 (흰색)
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white), // ✅ 아이콘 색상도 흰색으로 (옵션)
        ),
        body: Center(
          child: Row(
            children: [
              // Expanded(child: WidgetsNote())
              Expanded(child: LayoutAttributesNote()),
              // Icon(Icons.star),
              // Icon(Icons.star),
              // Icon(Icons.star_border)
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],
          ),
        ),
      ),
    );
  }
}
