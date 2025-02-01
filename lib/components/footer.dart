import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/components/text.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () async {
                  if (!await launchUrl(
                      Uri.parse("https://github.com/awanderer11"),
                      mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch url!';
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/github.svg',
                      height: 20,
                      colorFilter:
                          const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 4),
                    const TextBody(text: "Github")
                  ],
                ),
              ),
              const SizedBox(width: 8),
              InkWell(
                onTap: () async {
                  if (!await launchUrl(
                      Uri.parse("https://www.linkedin.com/in/alfkrnwn"),
                      mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch url!';
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/linkedin.svg',
                      height: 20,
                      colorFilter:
                          const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 4),
                    const TextBody(text: "Linkedin")
                  ],
                ),
              ),
            ],
          ),
          const TextBody(text: "Copyright © 2025"),
        ],
      ),
    );
  }
}
