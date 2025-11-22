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
    "I am an experienced mobile developer with a strong foundation in building high-quality applications for both Android and iOS. Over the years, I have developed a deep understanding of modern mobile development practices, from crafting intuitive user interfaces to ensuring smooth and reliable app performance.",
    "I specialize in creating responsive, user centered designs and translating ideas into functional, engaging digital experiences. Throughout my career, I have been involved in various stages of development from initial planning and design, to implementation, testing, optimization, and long term maintenance.",
    "My experience includes collaborating closely with designers, product teams, and backend engineers to deliver features that are both visually appealing and technically robust. I focus on writing clean, maintainable code and continuously look for ways to enhance app speed, stability, and overall user satisfaction.",
    "I stay committed to learning and adapting to new tools, technologies, and industry trends to ensure that the solutions I create remain relevant and scalable. Over the years, I’ve contributed to multiple successful product launches and have consistently delivered results that drive user engagement and business value.",
    "I take pride in my ability to approach challenges with creativity and a problem-solving mindset while always striving for excellence in every project. If you need help with any aspect of mobile development or want to explore ideas, feel free to reach out. I'm always excited to collaborate and create meaningful digital experiences.",
    "Overall, this is my profile that highlights my skills, experience, and passion over 5+ years of mastering this framework and delivering impactful solutions for clients and users.",
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
