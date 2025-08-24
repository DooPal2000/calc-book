// ================================
// 📘 Flutter 레이아웃 속성 노트
// -------------------------------
// Row/Column의 주요 정렬 속성만 모은 실습 코드입니다.
// 실전 예제 전, 다양한 값을 직접 바꿔보며 실습해보세요
// 이 예제에서는 Column 은 최상단에 1개, 나머지는 Row 로 구성했는데, 추후 Row -> Col 연습도 추가
// ================================

import 'package:flutter/material.dart';

class LayoutAttributesNote extends StatelessWidget {
  const LayoutAttributesNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // mainAxisAlignment 실습 예시
          const Text(
            'mainAxisAlignment 사용 예제 (Row, Column 모두 적용 가능)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // 시작 정렬
            children: const [Text('A'), Text('B'), Text('C')],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
            children: const [Text('A'), Text('B'), Text('C')],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 양 끝 + 동일 간격
            children: const [Text('A'), Text('B'), Text('C')],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 모든 간격 균등
            children: const [Text('A'), Text('B'), Text('C')],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 양끝 간격 1/2, 내부는 동일
            children: const [Text('A'), Text('B'), Text('C')],
          ),
          const Divider(),

          // crossAxisAlignment 실습 예시
          const Text(
            'crossAxisAlignment 사용 예제',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 위쪽 기준
            children: const [
              Text('Start'),
              SizedBox(height: 30, child: Text('높이 30')),
              Text('끝')
            ],
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end, // 아래쪽 기준
            children: const [
              Text('End'),
              SizedBox(height: 30, child: Text('높이 30')),
              Text('끝')
            ],
          ),
          const Divider(),

          // mainAxisSize 실습 예시
          const Text(
            'mainAxisSize 사용 예제',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisSize: MainAxisSize.max, // Row가 가능한 만큼 차지
            children: const [Text('MAX')],
          ),
          Row(
            mainAxisSize: MainAxisSize.min, // 내용 크기만큼만 차지
            children: const [Text('MIN')],
          ),
        ],
      ),
    );
  }
}
