import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/components/spacing.dart';

const Color textPrimary = Color.fromARGB(255, 226, 227, 235);
const Color textSecondary = Color.fromARGB(255, 143, 146, 151);

class TextBody extends StatelessWidget {
  final String text;

  const TextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      child: Text(text, style: bodyTextStyle),
    );
  }
}

class TextBodySecondary extends StatelessWidget {
  final String text;

  const TextBodySecondary({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      child: Text(text, style: subtitleTextStyle),
    );
  }
}

class TextHeadlineSecondary extends StatelessWidget {
  final String text;

  const TextHeadlineSecondary({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom12,
      child: Text(text, style: headlineSecondaryTextStyle),
    );
  }
}

class TextBlockquote extends StatelessWidget {
  final String text;

  const TextBlockquote({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 2, color: Color(0xFF333333)))),
      padding: const EdgeInsets.only(left: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text, style: bodyTextStyle),
      ),
    );
  }
}

ButtonStyle? menuButtonStyle = TextButton.styleFrom(
    foregroundColor: textSecondary,
    backgroundColor: Colors.transparent,
    disabledForegroundColor: const Color.fromRGBO(0, 0, 0, 0.38),
    textStyle: buttonTextStyle,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16));

TextStyle headlineTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 26,
        color: textPrimary,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w300));

TextStyle headlineSecondaryTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 20, color: textPrimary, fontWeight: FontWeight.w300));

TextStyle subtitleTextStyle = GoogleFonts.exo2(
    textStyle:
        const TextStyle(fontSize: 14, color: textSecondary, letterSpacing: 1));

TextStyle bodyTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary));

TextStyle buttonTextStyle = GoogleFonts.exo2(
    textStyle:
        const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));
