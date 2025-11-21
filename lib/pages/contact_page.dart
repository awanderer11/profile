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

class ContactPage extends StatelessWidget {
  static const String name = 'contact';

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContactItem> contactItems = [
      ContactItem(
          icon: 'assets/svg/phone.svg', text: "Phone number: +6281245223654"),
      ContactItem(
          icon: 'assets/svg/email.svg', text: "Email: alfkrnwn@gmail.com"),
      ContactItem(
          icon: 'assets/svg/email.svg',
          text: "Email: alifkurniawan11@gmail.com"),
      ContactItem(
          icon: 'assets/svg/linkedin.svg',
          text: "Linkedin: linkedin.com/in/alfkrnwn"),
      ContactItem(
          icon: 'assets/svg/github.svg',
          text: "Github: github.com/awanderer11"),
      ContactItem(
          icon: 'assets/svg/gitlab.svg', text: "Gitlab: gitlab.com/alfkrnwn"),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const Header(),
              const CenterTitle(title: "CONTACT"),
              divider,
              ContactList(items: contactItems),
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

class CenterTitle extends StatelessWidget {
  final String title;
  const CenterTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: marginBottom12,
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, color: Colors.amber),
        ),
      ),
    );
  }
}

class ContactItem {
  final String icon;
  final String text;
  ContactItem({required this.icon, required this.text});
}

class ContactList extends StatelessWidget {
  final List<ContactItem> items;
  const ContactList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      item.icon,
                      height: 20,
                      colorFilter:
                          const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 4),
                    TextBody(text: item.text),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
