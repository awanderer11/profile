import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/components/text.dart';
import 'package:profile/pages/about_page.dart';
import 'package:profile/pages/career_page.dart';
import 'package:profile/pages/contact_page.dart';
import 'package:profile/pages/project_page.dart';
import 'package:profile/pages/summary_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    Navigator.defaultRouteName,
                    ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text("alfkrnwn",
                    style: GoogleFonts.exo2(
                        color: textPrimary,
                        fontSize: 30,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500)),
              ),
              if (ResponsiveBreakpoints.of(context).isMobile) ...[
                const Spacer(),
                Transform.translate(
                  offset: const Offset(16, 0),
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                )
              ] else
                Flexible(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Wrap(
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                              context,
                              Navigator.defaultRouteName,
                              ModalRoute.withName(Navigator.defaultRouteName)),
                          style: menuButtonStyle,
                          child: const Text("HOME"),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, AboutPage.name),
                          style: menuButtonStyle,
                          child: const Text("ABOUT ME"),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, CareerPage.name),
                          style: menuButtonStyle,
                          child: const Text("CAREER"),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, SummaryPage.name),
                          style: menuButtonStyle,
                          child: const Text("SUMMARY"),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, ProjectPage.name),
                          style: menuButtonStyle,
                          child: const Text("PROJECT"),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, ContactPage.name),
                          style: menuButtonStyle,
                          child: const Text("CONTACT"),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          height: 1,
          margin: const EdgeInsets.only(bottom: 30),
          color: const Color(0xFFEEEEEE),
        ),
      ],
    );
  }
}
