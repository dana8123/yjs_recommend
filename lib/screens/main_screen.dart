import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F2),
      appBar: AppBar(
        title: Text('YEYAKS', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.search)],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 추천 공간
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSpaceCard('에뜰리에 그림', '4.8'),
                _buildSpaceCard('엘드 지실', '4.7'),
                // ... 추가 카드
              ],
            ),
          ),
          // 카테고리 필터
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _buildCategoryChip('갤러리'),
                _buildCategoryChip('회의실'),
                _buildCategoryChip('공방'),
                // ...
              ],
            ),
          ),
          // 공간 리스트
          Expanded(
            child: ListView(
              children: [
                _buildListTile('월플 탕방', '4.9'),
                _buildListTile('예울 찰심', '4.9'),
                // ...
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이'),
        ],
      ),
    );
  }

  Widget _buildSpaceCard(String title, String rating) {
    return Container(
      width: 120,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(height: 60, color: Colors.grey[300]), // 이미지 자리
          SizedBox(height: 8),
          Text(title),
          Text('★ $rating'),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Chip(label: Text(label)),
    );
  }

  Widget _buildListTile(String title, String rating) {
    return ListTile(
      leading: Container(width: 50, height: 50, color: Colors.grey[300]), // 이미지 자리
      title: Text(title),
      subtitle: Text('★ $rating'),
    );
  }
}