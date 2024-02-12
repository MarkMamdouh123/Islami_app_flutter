import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage('assets/images/quran_radio.png'),
            ),
          ),
          Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    size: 40,
                    color: Color(0xffB7935F),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    size: 80,
                    color: Color(0xffB7935F),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    size: 40,
                    color: Color(0xffB7935F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
