import 'package:flutter/material.dart';
import 'package:profile/components/color.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/devider.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/pages/about_page.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

const String listItemTitleText = "HELLO, WORLD! :)";
const String listItemPreviewText =
    "I am Alif, an experienced software engineer from Indonesia focusing on Mobile App Development.";

class HomePage extends StatelessWidget {
  static const String name = 'home';

  const HomePage({super.key});

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
                    listItemTitleText,
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),
              divider,
              const MyWidget(),
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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.white)),
            child: const CircleAvatar(
              radius: 100,
              backgroundColor: secondary,
              backgroundImage: AssetImage("assets/png/alif.png"),
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "I'm Alif kurniawan",
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Software engineer | Mobile app developer | Flutter developer",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: textPrimary),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () => Navigator.pushNamed(context, AboutPage.name),
            child: const Text("Explore"),
          )
        ],
      ),
    );
  }
}
