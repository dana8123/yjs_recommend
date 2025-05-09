import 'package:flutter/material.dart';

class ReservationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F2),
      appBar: AppBar(
        leading: BackButton(),
        title: Text('예약'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          // 달력 (패키지 추천: table_calendar)
          Center(child: Text('APRIL', style: TextStyle(fontSize: 18))),
          SizedBox(height: 16),
          // 시간 선택
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeChip('15:00'),
              _buildTimeChip('15:30'),
              // ...
            ],
          ),
          SizedBox(height: 16),
          // 옵션
          CheckboxListTile(
            value: true,
            onChanged: (v) {},
            title: Text('인원 청비'),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (v) {},
            title: Text('라양 칼레'),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6B8E6E),
              minimumSize: Size(double.infinity, 48),
            ),
            child: Text('예약하기', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeChip(String time) {
    return Chip(label: Text(time));
  }
}