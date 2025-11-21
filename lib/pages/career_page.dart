import 'package:flutter/material.dart';
import 'package:profile/components/color.dart';
import 'package:profile/components/devider.dart';
import 'package:profile/components/footer.dart';
import 'package:profile/components/header.dart';
import 'package:profile/components/spacing.dart';
import 'package:profile/components/text.dart';
import 'package:profile/utils/max_width_extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CareerPage extends StatelessWidget {
  static const String name = 'career';

  const CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CareerItem> careerItems = [
      CareerItem(
        title: "Development Ops. Mobile Platform Officer",
        company: "Infomedia Solusi Humanika (ISH) · Fulltime",
        period: "Apr 2024 - Now",
        address:
            "Graha ISH, Gedung WorthCase, Jl. RS. Fatmawati Raya No.75, RT.6/RW.5, Cipete Utara, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12150",
      ),
      CareerItem(
        title: "Frontend Developer",
        company: "Grocee Teknologi Indonesia (Grocee) · Fulltime",
        period: "Sep 2020 - Mar 2024",
        address:
            "Jl. Sungai Saddang Baru No.12C, Maricaya Baru, Kec. Makassar, Kota Makassar, Sulawesi Selatan 90143",
      ),
      CareerItem(
        title: "Backend Developer & Frontend Developer",
        company: "Amtek (INBOX) · Fulltime",
        period: "May 2020 – Sep 2020",
        address:
            "Jl. Boulevard Ruko Topaz No.F/36, Masale, Kec. Panakkukang, Kota Makassar, Sulawesi Selatan 90231",
      ),
      CareerItem(
        title: "Fullstack Web Developer",
        company: "TRIBOX Indonesia (TRIBOX) · Fulltime",
        period: "Sep 2019 – May 2020",
        address:
            "Jl. Monginsidi Baru No.40, Rappocini, Kec. Rappocini, Kota Makassar, Sulawesi Selatan 90222",
      ),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ...[
            const Header(),
            const CenterTitle(title: "CAREER"),
            divider,
            ...careerItems.map((item) => Column(
                  children: [
                    CareerCard(item: item),
                    divider,
                  ],
                )),
          ].toMaxWidthSliver(),
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

class CareerItem {
  final String title;
  final String company;
  final String period;
  final String address;
  CareerItem({
    required this.title,
    required this.company,
    required this.period,
    required this.address,
  });
}

class CareerCard extends StatelessWidget {
  final CareerItem item;
  const CareerCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final List<String> details = [
      item.title,
      item.company,
      item.period,
      item.address
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.keyboard_arrow_right_outlined, color: Colors.amber),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details.map((text) => TextBody(text: text)).toList(),
          ),
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
