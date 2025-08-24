// ================================
// 📘 Flutter 초심자용 위젯 노트
// -------------------------------
// 이 파일은 공부용으로 기본 위젯을 정리해 놓은 코드 노트입니다.
// 프로젝트 코드에는 사용되지 않지만 학습에 도움이 되도록 작성했습니다.
// ================================

import 'package:flutter/material.dart';


class WidgetsNote extends StatelessWidget {
  const WidgetsNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Text 위젯 =====================
          const Text(
            '1. Text 위젯 - 텍스트 출력',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // 2. Container 위젯 =====================
          const Text(
            '2. Container 위젯 - 박스와 스타일',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: const Text('패딩 + 테두리 박스'),
          ),
          const SizedBox(height: 16),

          // 3. Image.asset =====================
          const Text(
            '3. Image.asset - 로컬 이미지 표시',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('// pubspec.yaml 에 이미지 경로가 등록되어 있어야 함'),
          Image.asset('assets/img.png'),
          const SizedBox(height: 16),

          // 4. Icon 위젯 =====================
          const Text(
            '4. Icon 위젯 - 머티리얼 아이콘 사용',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Icon(Icons.home, size: 48, color: Colors.green),
          const SizedBox(height: 16),

          // 5. Row / Column =====================
          const Text(
            '5. Row / Column - 위젯 배치',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('// Column: 수직 정렬'),
          Column(
            children: const [
              Text('위'),
              Text('아래'),
            ],
          ),
          const SizedBox(height: 8),
          const Text('// Row: 수평 정렬'),
          Row(
            children: const [
              Text('왼쪽'),
              SizedBox(width: 10),
              Text('오른쪽'),
            ],
          ),
          const SizedBox(height: 24),

          const Divider(),

          // 📌 보너스 Tip =====================
          const Text(
            '📌 추가 팁:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Text('- Padding, SizedBox: 여백 조절에 필수'),
          const Text('- Scaffold: 화면 기본 구조 제공'),
          const Text('- GestureDetector / InkWell: 터치 이벤트'),
          const Text('- ListView: 스크롤 가능한 목록'),
        ],
      ),
    );
  }
}

