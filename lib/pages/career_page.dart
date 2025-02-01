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
                  "CAREER",
                  style: TextStyle(fontSize: 20, color: Colors.amber),
                ),
              ),
            ),
            divider,
            const CareerWidget(
              text1: "Development Ops. Mobile Platform Officer",
              text2: "Infomedia Solusi Humanika (ISH) · Fulltime",
              text3: "Apr 2024 - Now",
              text4:
                  "Graha ISH, Gedung WorthCase, Jl. RS. Fatmawati Raya No.75, RT.6/RW.5, Cipete Utara, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12150",
            ),
            divider,
            const CareerWidget(
              text1: "Frontend Developer",
              text2: "Grocee Teknologi Indonesia (Grocee) · Fulltime",
              text3: "Sep 2020 - Mar 2024",
              text4:
                  "Jl. Sungai Saddang Baru No.12C, Maricaya Baru, Kec. Makassar, Kota Makassar, Sulawesi Selatan 90143",
            ),
            divider,
            const CareerWidget(
              text1: "Backend Developer & Frontend Developer",
              text2: "Amtek (INBOX) · Fulltime",
              text3: "May 2020 – Sep 2020",
              text4:
                  "Jl. Boulevard Ruko Topaz No.F/36, Masale, Kec. Panakkukang, Kota Makassar, Sulawesi Selatan 90231",
            ),
            divider,
            const CareerWidget(
              text1: "Fullstack Web Developer",
              text2: "TRIBOX Indonesia (TRIBOX) · Fulltime",
              text3: "Sep 2019 – May 2020",
              text4:
                  "Jl. Monginsidi Baru No.40, Rappocini, Kec. Rappocini, Kota Makassar, Sulawesi Selatan 90222",
            ),
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

class CareerWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const CareerWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

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
              TextBody(text: text1),
              TextBody(text: text2),
              TextBody(text: text3),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Expanded(child: TextBody(text: text4))),
            ],
          )
        ],
      ),
    );
  }
}
