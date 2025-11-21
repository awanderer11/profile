import 'package:flutter/material.dart';
import 'package:profile/components/color.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/devider.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutPage extends StatelessWidget {
  static const String name = 'about';

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const Header(),
              const CenterTitle(title: "ABOUT ME"),
              divider,
              const AboutContent(),
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

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  final List<String> paragraphs = const [
    "I am proficient in the Dart programming language and the Flutter framework, and am an expert in creating seamless user experiences on both Android and iOS platforms. I have honed my skills in designing responsive and engaging UIs using Flutter’s extensive widget library. My expertise includes state management solutions such as Provider, Riverpod, Getx, and Bloc, which ensure efficient data flow and application stability.",
    "Having contributed to numerous projects, I bring a wealth of experience in all phases of application development from initial concept and design to deployment and maintenance. I have worked closely with UI/UX designers to translate concepts into intuitive interfaces and seamlessly integrated backend APIs to deliver robust functionality.",
    "I excel at identifying performance issues and implementing optimizations to improve application speed, responsiveness, and overall user satisfaction. Through rigorous testing and debugging practices, I ensure high-quality results that meet client requirements and exceed user expectations.",
    "My journey as a Flutter developer has been marked by a commitment to staying at the forefront of technological advancements. I actively explore new Flutter packages to expand my knowledge base.",
    "Throughout my career, I have achieved significant milestones, including successful app launches with high user ratings and praise for innovative features that increase user engagement. I take pride in my ability to adapt Flutter’s capabilities to a variety of project needs and deliver scalable solutions that drive business growth.",
    "Moving forward, I am excited to leverage emerging Flutter trends and advancements to address new challenges and deliver more impactful mobile experiences. My goal is to continue pushing the boundaries of what Flutter can achieve while maintaining a strong commitment to excellence and innovation.",
    "Overall, this is my profile that highlights my skills, experience, and passion over 5 years of mastering this framework and delivering impactful solutions for clients and users.",
    "If there is a specific aspect of mobile app development that you are interested in or need help with, please feel free to ask. :)",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: paragraphs
            .map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: TextBody(text: p),
                ))
            .toList(),
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
