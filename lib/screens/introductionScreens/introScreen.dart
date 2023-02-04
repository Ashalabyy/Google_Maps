import '../../TabsScreens/TabsScreen.dart';
import 'package:flutter/material.dart';
import 'package:furnitures/custom/constants.dart';
import './page1.dart';
import './page2.dart';
import './page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  static const RouteName = '/IntroScreen';
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  PageController _controller = PageController();
  bool onlastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Align(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Back',
                      style: headingStyle,
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                      dotWidth: 35,
                      spacing: 10,
                      dotColor: Colors.white,
                      activeDotColor: kPrimaryLightColor,
                    ),
                  ),
                  onlastpage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(TabsScreen.RouteName);
                          },
                          child: Text(
                            'done',
                            style: headingStyle,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'next',
                            style: headingStyle,
                          ),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
