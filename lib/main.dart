import 'package:flutter/material.dart';
import 'widgets_note.dart'; // 스터디 노트 위젯 가져오기

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Scaffold로 전체 레이아웃 잡기 추천
        appBar:AppBar(),
        body: Center(
          child: Column(
            children: [
              Container(width: 50, height: 50, color: Colors.black),
              Expanded( // 🟢 중요! 공간 확보
                child: WidgetsNote(),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}
