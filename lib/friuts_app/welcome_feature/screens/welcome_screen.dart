import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/screens/second_welcome_screen.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/widgets/custom_welcome_bottom_widget.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/widgets/custom_welcome_scaffold.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWelcomeScaffold(
      mainImg: "assets/images/f_plat.png",
      bottomWidget: CustomWelcomeBottomWidget(
        buttonLabel: "Let’s Continue",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const SecondWelcomeScreen(),
            ),
          );
        },
        otherWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Get The Freshest Fruit Salad Combo",
              textAlign: TextAlign.start,
              style: GoogleFonts.gabarito(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
              textAlign: TextAlign.start,
              style: GoogleFonts.gabarito(
                fontSize: 13,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
