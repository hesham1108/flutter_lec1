import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/home/screens/home_screen.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/widgets/custom_welcome_bottom_widget.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/widgets/custom_welcome_scaffold.dart';

class SecondWelcomeScreen extends StatelessWidget {
  const SecondWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWelcomeScaffold(
      mainImg: "assets/images/f_plat.png",
      bottomWidget: CustomWelcomeBottomWidget(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            ),
          );
        },
        buttonLabel: "Start Ordering",
        otherWidget: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is your firstname?",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              cursorColor: Color.fromARGB(255, 128, 126, 126),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF3F1F1),
                hintText: "Tony",
                hintStyle: TextStyle(
                  color: Color(0xFFC2BDBD),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
