import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  const second_page({Key? key}) : super(key: key);

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String str = "";
  String str1 = "";
  bool t1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/gameplaybackground.jpg"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/skip.png"))),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 200,
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/level_board.png"),
                                fit: BoxFit.fill)),
                        child: Text(
                          "Puzzzle 1",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontFamily: "f1",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/hint.png"))),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(


                      margin: EdgeInsets.fromLTRB(15, 15, 15, 100),
                      decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/p1.png"),
                          fit: BoxFit.fill)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 35,
                          margin: EdgeInsets.only(top: 5, left: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "$str",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("images/delete.png");
                      },
                      child: Container(
                        height: 45,
                        width: 50,
                        margin: EdgeInsets.only(top: 4, left: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/delete.png"))),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(onTapDown: (details) {
                          t1=true;
                        },onTapCancel: () {
                          t1 = false;
                        },
                          onTapUp: (details) {
                            t1 = false;
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 3),
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: (t1 == true)?Colors.white:Colors.black)),
                            child: Text(
                              "SUMBIT",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("1");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("2");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 2, top: 3),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("3");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("4");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("5");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("6");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("7");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("8");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("9");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2, top: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        myfun("0");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 2, right: 2, top: 3),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ))
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    ));
  }

  myfun(String a) {
    setState(() {
      if (a == "1" ||
          a == "2" ||
          a == "3" ||
          a == "4" ||
          a == "5" ||
          a == "6" ||
          a == "7" ||
          a == "8" ||
          a == "9" ||
          a == "0") {
        str = str + a;
      } else if (a == "images/delete.png") {
        setState(() {
          str = str.substring(0, str.length - 1);
        });
      } else if (a == "SUBMIT") {
        setState(() {
          str1 = str;
          str = "";
        });
      }
    });
  }
}
