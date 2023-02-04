import 'package:flutter/material.dart';
import './body.dart';

class HomeHeader extends StatefulWidget {
  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  double XofSet = 0;
  double YofSet = 0;
  double ScaleFactor = 1;
  bool isDrawerOpen = true;

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return AnimatedContainer(
      transform: Matrix4.translationValues(XofSet, YofSet, 1)
        ..scale(ScaleFactor),
      duration: Duration(
        milliseconds: 250,
      ),
      child: isDrawerOpen
          ? Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 10,
                  ),
                  child: Column(children: [
                    Container(
                      height: ScreenHeight * 0.09,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    XofSet = 250;
                                    YofSet = 150;
                                    ScaleFactor = 0.6;
                                    isDrawerOpen = false;
                                  });
                                },
                                child: Image(
                                  height: 35,
                                  width: 35,
                                  image: AssetImage('assets/images/Menu.png'),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            textScaleFactor: 411.4 / 375,
                                            'DELEVER TO.',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                          Text(
                                            textScaleFactor: 411.4 / 375,
                                            'Aparment(El Shorouk -e 4th District Gamal abdel Naser)',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_circle_outlined,
                                        color: Color(0xFFe76f51),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: body(),
                      ),
                    ),
                  ]),
                ),
              ),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  XofSet = 0;
                  YofSet = 0;
                  ScaleFactor = 1;
                  isDrawerOpen = true;
                });
              },
              child: Scaffold(
                backgroundColor: Colors.white,
                body: SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.0, horizontal: 15),
                    child: Column(
                      children: [
                        Container(
                          height: ScreenHeight * 0.1,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage('assets/images/Menu.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    textScaleFactor: 411.4 / 375,
                                    'Deleviring To.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 9,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    textScaleFactor: 411.4 / 375,
                                    'Aparment(El Shorouk -e 4th Dis...',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 375 / 411.4,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Color(0xFFe0b1cb),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: body(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
