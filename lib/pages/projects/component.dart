import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/components/image.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:url_launcher/url_launcher.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final String? description;
  final String? link;
  final String? link2;

  const ListItem(
      {super.key,
      required this.title,
      this.imageUrl,
      this.description,
      this.link,
      this.link2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (imageUrl != null)
          ImageWrapper(
            image: imageUrl!,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom12,
            child: Text(
              title,
              style: headlineTextStyle,
            ),
          ),
        ),
        if (description != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: marginBottom12,
              child: Text(
                description!,
                style: bodyTextStyle,
              ),
            ),
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom24,
            child: Row(
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
                    if (!await launchUrl(Uri.parse(link!),
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
          ),
        ),
      ],
    );
  }
}
