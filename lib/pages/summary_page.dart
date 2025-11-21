import 'package:flutter/material.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:profile/components/devider.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SummaryPage extends StatelessWidget {
  static const String name = 'summary';

  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ...[
            const Header(),
            const CenterTitle(title: "SUMMARY"),
            divider,
            const InfoSection(
              title: "Technical skill",
              items: [
                "Dart Programming Language: Proficient in Dart, the primary language for Flutter development.",
                "Flutter Framework: Strong understanding of Flutter widgets, state management, and the widget tree structure.",
                "Responsive Design: Ability to create responsive layouts that work on various screen sizes and orientations.",
                "API Integration: Experience in integrating RESTful APIs and handling asynchronous operations with Future and Streams.",
                "UI/UX Design Principles: Knowledge of UI/UX best practices to create intuitive and user-friendly applications.",
                "Testing: Understanding of unit testing, widget testing, and integration testing in Flutter.",
                "Publishing Apps: Knowledge of the app publishing process for both Android (Play Store) and iOS (App Store).",
              ],
            ),
            divider,
            const InfoSection(
              title: "Tools and technologies",
              items: [
                "API Integration: Familiarity in using Swagger Editor, Postman, BloomRPC.",
                "Version Control: Proficient in using Git, Github or Gitlab for version control and collaboration.",
                "Firebase Integration: Familiarity with Firebase services like Firestore, Authentication, Remote Config, Cloud Storage and Realtime Database.",
                "Development Tools: Proficiency in IDEs like Android Studio, Visual Studio Code, or IntelliJ IDEA.",
                "CI/CD: Understanding of Continuous Integration and Continuous Deployment practices for Flutter apps.",
                "Plugins and Packages: Familiarity with creating and using third-party packages from pub.dev.",
                "Local Storage: Knowledge of local storage options like Shared Preferences, Get Storage, or Hive.",
                "State Management: Familiarity with state management solutions like Provider, Riverpod, Bloc, or GetX.",
              ],
            ),
            divider,
            const InfoSection(
              title: "Softskills",
              items: [
                "Problem Solving: Strong analytical skills to troubleshoot and solve coding issues effectively.",
                "Communication: Ability to communicate technical concepts clearly with team members and stakeholders.",
                "Continuous Learning: Willingness to stay updated with the latest trends and updates in the Flutter ecosystem.",
              ],
            ),
          ].toMaxWidthSliver(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: MaxWidthBox(
              maxWidth: 1200,
              backgroundColor: Colors.white,
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

class InfoSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const InfoSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBody(text: title),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items.map((e) => TextBody(text: e)).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
