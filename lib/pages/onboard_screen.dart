import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_goent/theme.dart';
import 'package:ui_goent/models/onboard_model.dart';
import 'package:ui_goent/widgets/media_query.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    OnboardingContent(
        imgUrl: "assets/images/onboard1.png",
        title: "Make Challenge",
        desc: "We are here to help you to make a match Schedule"),
    OnboardingContent(
        imgUrl: "assets/images/onboard2.png",
        title: "Win Tournament",
        desc: "we are here always to support all your matches"),
    OnboardingContent(
        imgUrl: "assets/images/onboard3.png",
        title: "Be The Champion!",
        desc: "Win all the available matches and Be The Champion"),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: displayHeight(context) * 5,
                width: displayWidth(context) * 65,
                child: TextButton(
                  onPressed: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  },
                  child: (_currentPage == (_pages.length - 1)
                      ? Text(
                          "Get Started",
                          style: buttonTitle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: buttonTitle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        )),
                  style: TextButton.styleFrom(
                      backgroundColor: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 8,
                      width: (index == _currentPage) ? 24 : 8,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: displayHeight(context) * 6.6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == _currentPage)
                              ? colorPrimary
                              : dotColorOnboard),
                    );
                  }))
            ],
          )
        ],
      ),
    );
  }
}