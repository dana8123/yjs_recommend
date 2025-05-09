import 'package:flutter/material.dart';

class SpaceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F2),
      appBar: AppBar(
        leading: BackButton(),
        actions: [Icon(Icons.share)],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 16),
          Text('에뜰리에 그림', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('★ 4.8 | 자구 돌맹동'),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.chair),
              SizedBox(width: 8),
              Text('이용 좌석: 5 SET'),
            ],
          ),
          SizedBox(height: 8),
          Text('이용 지적: 12,000원'),
          SizedBox(height: 24),
          Text('리뷰', style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('★★★★★ 4.8'),
            subtitle: Text('밝고 모던해요. 조명이 좋아요.'),
          ),
        ],
      ),
    );
  }
}