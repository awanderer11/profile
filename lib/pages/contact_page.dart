import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/components/color.dart';
import 'package:profile/components/devider.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

const String listItemTitleText = "Hello, World! :)";
const String phone = "Phone number: +6281245223654";
const String email = "Email: alfkrnwn@gmail.com\nalifkurniawan11@gmail.com";

class ContactPage extends StatelessWidget {
  static const String name = 'contact';

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const Header(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom12,
                  child: const Text(
                    "CONTACT",
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),
              divider,
              const CareerWidget(
                text1: "Phone number: +6281245223654",
                text2: "Email: alfkrnwn@gmail.com",
                text3: "Email: alifkurniawan11@gmail.com",
                text4: "Linkedin: linkedin.com/in/alfkrnwn",
                text5: "Github: github.com/awanderer11",
                text6: "Gitlab:  gitlab.com/alfkrnwn",
              ),
            ].toMaxWidth(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: MaxWidthBox(
              maxWidth: 1200,
              backgroundColor: secondary,
              child: Container(),
            ),
          ),
          ...[
            divider,
            const Footer(),
          ].toMaxWidthSliver(),
        ],
      ),
    );
  }
}

class CareerWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  const CareerWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/phone.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text1)
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/email.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text2)
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/email.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text3)
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/linkedin.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text4)
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/github.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text5)
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svg/gitlab.svg',
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
            ),
            const SizedBox(width: 4),
            TextBody(text: text6)
          ],
        ),
      ],
    );
  }
}
