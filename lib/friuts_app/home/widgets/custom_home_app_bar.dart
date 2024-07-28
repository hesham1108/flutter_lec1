import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/home/screens/test_custom_scroll_view.dart';
import 'package:flutter_lec1/friuts_app/home/screens/test_page_view.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const TestCustomScrollView(),
              ),
            );
          },
          icon: Image.asset("assets/icons/drawer_icon.png"),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const TestPageView(),
              ),
            );
          },
          icon: Column(
            children: [
              Image.asset("assets/icons/cart_icon.png"),
              const Text(
                "My basket",
                style: TextStyle(
                  color: Color(0xFF27214D),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
