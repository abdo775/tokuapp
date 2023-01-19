import 'package:flutter/material.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffd7d29),
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff502a1d),
      ),
      body: Container(
          height: 200,
          child: Row(
            children: [Image.asset('numbers/assets/Flutlab.png')],
          )),
    );
  }
}
