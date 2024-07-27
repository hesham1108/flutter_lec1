import 'package:flutter/material.dart';

class CustomWelcomeScaffold extends StatelessWidget {
  final String? subImg, shadowImg;
  final String mainImg;
  final Widget bottomWidget;
  const CustomWelcomeScaffold({
    super.key,
    required this.mainImg,
    this.shadowImg,
    this.subImg,
    required this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFFA451),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //sub image
                  Align(
                    // alignment: Alignment.centerRight,
                    alignment: AlignmentDirectional.centerEnd,
                    child: Image.asset(subImg ?? "assets/images/s_f.png"),
                  ),
                  //main image
                  Image.asset(mainImg),
                  //shadow image
                  Image.asset(shadowImg ?? "assets/images/f_elip.png"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              color: Colors.white,
              child: bottomWidget,
            ),
          ),
        ],
      ),
    );
  }
}
