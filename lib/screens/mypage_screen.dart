import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F2),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('마이페이지'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            child: ListTile(
              title: Text('예약 내역', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('에울 찰심 15:00~13:00'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('리뷰 관리', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('★★★★★ 4.8'),
                  Text('밝고 모던해요. 조명이 좋아요.'),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('경매 내역'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: Text('개인정보 관리'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
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
}

