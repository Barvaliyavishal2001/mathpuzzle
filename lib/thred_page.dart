import 'package:flutter/material.dart';

class thred_page extends StatefulWidget {
  const thred_page({Key? key}) : super(key: key);

  @override
  State<thred_page> createState() => _thred_pageState();
}

class _thred_pageState extends State<thred_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
                image:DecorationImage(fit: BoxFit.fill,
                    image: AssetImage("images/background.jpg")) ),
            child: Row(children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: ),
              ),
            ]),
          )),
        ],
     ),
    );
  }
}
