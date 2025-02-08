import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/devider.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/pages/projects/component.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  static const String name = 'project';

  const ProjectPage({super.key});

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
                  "PROJECT",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
              ),
            ),
            divider,
            const ListItem(
              title: "Sintesys",
              description: "Description: Digital reporting for sales.",
              imageUrl: "assets/projects/sintesys.png",
              link:
                  'https://play.google.com/store/apps/details?id=id.ish.sintesys&hl=en-ID',
              link2: "https://apps.apple.com/us/app/sintesys/id6449664265",
            ),
            divider,
            const ListItem(
              title: "Presilia",
              description:
                  "Description: Digital reporting for sales and manager approval.",
              imageUrl: "assets/projects/presilia.jpg",
              link:
                  'https://play.google.com/store/apps/details?id=ish.co.id.presilia&hl=en-ID',
              link2: "https://apps.apple.com/us/app/presillia/id6449664227",
            ),
            divider,
            const ListItem(
              title: "Sintesys Panasonic",
              description:
                  "Description: This application is used for Panasonic Sales Promotion Girls or Sales Promotion Boys attendance, leave applications, overtime, sick leave and activity reports.",
              imageUrl: "assets/projects/panasonic.png",
              link:
                  'https://play.google.com/store/apps/details?id=ish.co.id.panasonic.panasonicv_1_0&hl=en-ID',
            ),
            divider,
            const ListItem(
              title: "Sintesys Joyday Hawker",
              description: "Description: Digital reporting.",
              imageUrl: "assets/projects/joyday.png",
              link:
                  'https://play.google.com/store/apps/details?id=com.ish.sintesys_joyday_hawker&hl=en-ID',
            ),
            divider,
            const ListItem(
              title: "Sintesys Sharp",
              description: "Description: Sintesys for SHARP employee.",
              imageUrl: "assets/projects/sharp.png",
              link:
                  'https://play.google.com/store/apps/details?id=id.sintesys.sintesys_sharp&hl=en-ID',
            ),
            divider,
            const Projects(
                text1: "Sagupopeda",
                text2:
                    "Description: Application to provide solutions to regional leadership activities.",
                link:
                    'https://play.google.com/store/apps/details?id=com.bualawalabs.sagu_popeda&hl=en-ID'),
            divider,
            const Projects(
                text1: "Dairyfood Sales Team",
                text2:
                    "Description: Application used for sales to view order data.",
                link:
                    'https://play.google.com/store/apps/details?id=app.dairyfood.sales&hl=en-ID'),
            divider,
            const Projects(
                text1: "Grocee Grow",
                text2:
                    "Description: Application used for owners to manage their merchant.",
                link:
                    'https://play.google.com/store/apps/details?id=id.grocee.grow&hl=en-ID'),
            divider,
            const Projects(
                text1: "Grocee Mitra",
                text2:
                    "Description: Mitra or Merchants are applications used to manage orders.",
                link:
                    'https://play.google.com/store/apps/details?id=id.grocee.mitra&hl=en-ID'),
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

class Projects extends StatelessWidget {
  final String text1;
  final String text2;
  final String link;
  final String? link2;
  const Projects({
    super.key,
    required this.text1,
    required this.text2,
    required this.link,
    this.link2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: marginBottom12,
              child: Text(
                text1,
                style: headlineTextStyle,
              ),
            ),
          ),
          TextBody(text: text2),
          Row(
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: link2 == ""
                    ? () {}
                    : () async {
                        if (!await launchUrl(Uri.parse(link2!),
                            mode: LaunchMode.externalApplication)) {
                          throw 'Could not launch url!';
                        }
                      },
                icon: SvgPicture.asset(
                  'assets/svg/appstore.svg',
                  height: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                ),
                label: const Text("Appstore"),
              ),
              const SizedBox(width: 16),
              TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(link),
                      mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch url!';
                  }
                },
                icon: SvgPicture.asset(
                  'assets/svg/playstore.svg',
                  height: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                ),
                label: const Text("Playstore"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
