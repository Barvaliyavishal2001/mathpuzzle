import 'package:flutter/material.dart';
import 'package:mathpuzzle/second.dart';

void main() {
  runApp(MaterialApp(
    home: puzzle(),
  ));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

bool t1 = false;
bool t2 = false;
bool t3 = false;

class _puzzleState extends State<puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Math PUzzle")),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/background.jpg"))),
        child: Column(children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            child: Text("MATH PUZZLE",
                style: TextStyle(
                    fontFamily: 'f1',
                    fontSize: 45,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          )),
          Expanded(
              flex: 3,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.only(right: 20, left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/blackboard_main_menu.png"))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTapDown: (details) {
                          setState(() {
                            t1 = true;
                          });
                        },
                        onTapUp: (details) {
                          setState(() {
                            t1 = true;
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return second_pag();
                            },));
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            t1 = false;
                          });
                        },
                        child: Container(
                          child: Text(" CONTINUE ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "f1")),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    (t1 == true) ? Colors.white : Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTapDown: (details) {
                          setState(() {
                            t2 = true;
                          });
                        },
                        onTapUp: (details) {
                          setState(() {
                            t2 = true;
                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            t2 = false;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    (t2 == true) ? Colors.white : Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Text(" PUZZLES ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "f1")),
                        ),
                      ),
                      GestureDetector(
                        onTapDown: (details) {
                          setState(() {
                            t3 = true;
                          });
                        },
                        onTapUp: (details) {
                          setState(() {
                            t3 = true;

                          });
                        },
                        onTapCancel: () {
                          setState(() {
                            t3 = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    (t3 == true) ? Colors.white : Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Text(" BUY PRO ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "f1")),
                        ),
                      ),
                    ]),
              )),
          Expanded(
            child: Container(
              child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       height: 50,
                       width: 50,
                       margin: EdgeInsets.only(top: 50),
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.all(Radius.circular(6)),
                           image: DecorationImage(
                               image: AssetImage('images/shareus.png'))),
                     ),
                     Container(
                       height: 50,
                       width: 50,
                       margin: EdgeInsets.only(top: 50,left: 10,right: 10),
                       decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.all(Radius.circular(6)),
                           image: DecorationImage(
                               image: AssetImage('images/emailus.png'))),
                     ),
                   ],
                 ),
                 Container(
                   margin: EdgeInsets.all(20),
                   child: Text("Privacy Policy"),)
               ],
              ),
            ),
          ),
        ]),
      ),
    );
  }


}
