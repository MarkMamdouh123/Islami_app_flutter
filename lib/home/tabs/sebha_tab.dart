import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

int count = 1;
List<String> txt = ['سبحان الله', 'الحمدالله', ' الله اكبر'];

class _SebhaTabState extends State<SebhaTab> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              sebha_counter();
            },
            child: Image(
              width: 350,
              height: 350,
              image: AssetImage('assets/images/img.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Container(
            alignment: Alignment.center,
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFB7935F),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            width: 137,
            height: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFB7935F),
            ),
            child: Text(
              '${txt[index]}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void sebha_counter() {
    setState(() {
      count++;
      if (count == 31) {
        index++;
        count = 1;

        if (index == 3) {
          index = 0;
        }
      }
    });
  }
}
