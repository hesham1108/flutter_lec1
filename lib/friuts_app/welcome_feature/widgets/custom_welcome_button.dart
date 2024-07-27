import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWelcomeButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonLabel;
  const CustomWelcomeButton({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFA451),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: Text(
          buttonLabel,
          style: GoogleFonts.gabarito(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
