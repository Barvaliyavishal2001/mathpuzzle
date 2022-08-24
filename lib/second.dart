import 'package:flutter/material.dart';

class second_pag extends StatefulWidget {
  const second_pag({Key? key}) : super(key: key);

  @override
  State<second_pag> createState() => _second_pagState();
}

class _second_pagState extends State<second_pag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4,
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage("images/gameplaybackground.jpg"))
            ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/skip.png"))
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 700,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/level_board.png"))
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/hint.png"))
                        ),
                      ),
                    ],),
                  ],
                ),
          )),
          Expanded(child: Container(
            color: Color(0xff020000),
            child:Row(children: [
              Expanded(child: Container(height: 50,width: 150,decoration: BoxDecoration(
                color: Colors.white,
              ),)),
              Expanded(child: Container(
                decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("images/delete.png"))),
              )),
              Expanded(child: Container(
                height: 50,width: 200,
                decoration: BoxDecoration(border:Border.all(color: Color(0xfffffff))),
              )),
            ],),
          )),
        ],
      ),
    );
  }
}
