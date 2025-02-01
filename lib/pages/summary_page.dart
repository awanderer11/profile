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
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: marginBottom12,
                child: const Text(
                  "SUMMARY",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
              ),
            ),
            divider,
            const Summary(),
            divider,
            const ToolsAndTech(),
            divider,
            const Softskil(),
          ].toMaxWidthSliver(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: MaxWidthBox(
                maxWidth: 1200,
                backgroundColor: Colors.white,
                child: Container()),
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

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBody(text: "Technical skill"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    text:
                        "Dart Programming Language: Proficient in Dart, the primary language for Flutter development.",
                  ),
                  TextBody(
                    text:
                        "Flutter Framework: Strong understanding of Flutter widgets, state management, and the widget tree structure.",
                  ),
                  TextBody(
                    text:
                        "Responsive Design: Ability to create responsive layouts that work on various screen sizes and orientations.",
                  ),
                  TextBody(
                    text:
                        "API Integration: Experience in integrating RESTful APIs and handling asynchronous operations with Future and Streams.",
                  ),
                  TextBody(
                    text:
                        "UI/UX Design Principles: Knowledge of UI/UX best practices to create intuitive and user-friendly applications.",
                  ),
                  TextBody(
                    text:
                        "Testing: Understanding of unit testing, widget testing, and integration testing in Flutter.",
                  ),
                  TextBody(
                    text:
                        "Publishing Apps: Knowledge of the app publishing process for both Android (Play Store) and iOS (App Store).",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ToolsAndTech extends StatelessWidget {
  const ToolsAndTech({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBody(text: "Tools and technologies"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    text:
                        "API Integration: Familiarity in using Swagger Editor, Postman, BloomRPC.",
                  ),
                  TextBody(
                    text:
                        "Version Control: Proficient in using Git, Github or Gitlab for version control and collaboration.",
                  ),
                  TextBody(
                    text:
                        "Firebase Integration: Familiarity with Firebase services like Firestore, Authentication, Remote Config, Cloud Storage and Realtime Database.",
                  ),
                  TextBody(
                    text:
                        "Development Tools: Proficiency in IDEs like Android Studio, Visual Studio Code, or IntelliJ IDEA.",
                  ),
                  TextBody(
                    text:
                        "CI/CD: Understanding of Continuous Integration and Continuous Deployment practices for Flutter apps.",
                  ),
                  TextBody(
                    text:
                        "Plugins and Packages: Familiarity with creating and using third-party packages from pub.dev.",
                  ),
                  TextBody(
                    text:
                        "Local Storage: Knowledge of local storage options like Shared Preferences, Get Storage, or Hive.",
                  ),
                  TextBody(
                    text:
                        "State Management: Familiarity with state management solutions like Provider, Riverpod, Bloc, or GetX.",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Softskil extends StatelessWidget {
  const Softskil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBody(text: "Softskills"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    text:
                        "Problem Solving: Strong analytical skills to troubleshoot and solve coding issues effectively.",
                  ),
                  TextBody(
                    text:
                        "Communication: Ability to communicate technical concepts clearly with team members and stakeholders.",
                  ),
                  TextBody(
                    text:
                        "Continuous Learning: Willingness to stay updated with the latest trends and updates in the Flutter ecosystem.",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
