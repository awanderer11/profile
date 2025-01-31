import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/components/color.dart';
import 'package:profile/pages/about_page.dart';
import 'package:profile/pages/career_page.dart';
import 'package:profile/pages/contact_page.dart';
import 'package:profile/pages/home_page.dart';
import 'package:profile/pages/project_page.dart';
import 'package:profile/pages/summary_page.dart';
import 'package:profile/utils/no_animation_page_transitions_builder.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    usePathUrlStrategy();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),
      initialRoute: '/',
      onGenerateInitialRoutes: (initialRoute) {
        final Uri uri = Uri.parse(initialRoute);
        return [
          buildPage(path: uri.path, queryParams: uri.queryParameters),
        ];
      },
      onGenerateRoute: (RouteSettings settings) {
        final Uri uri = Uri.parse(settings.name ?? '/');
        return buildPage(path: uri.path, queryParams: uri.queryParameters);
      },
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primary,
        textTheme: GoogleFonts.exo2TextTheme(),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.fuchsia: NoAnimationPageTransitionsBuilder(),
            TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
            TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
            TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Route<dynamic> buildPage(
      {required String path, Map<String, String> queryParams = const {}}) {
    return PageRouteBuilder(
      settings: RouteSettings(
          name: (path.startsWith('/') == false) ? '/$path' : path),
      pageBuilder: (context, animation, secondaryAnimation) {
        String pathName =
            path != '/' && path.startsWith('/') ? path.substring(1) : path;
        return SelectionArea(
          child: switch (pathName) {
            '/' || HomePage.name => const HomePage(),
            AboutPage.name => const AboutPage(),
            CareerPage.name => const CareerPage(),
            ProjectPage.name => const ProjectPage(),
            SummaryPage.name => const SummaryPage(),
            ContactPage.name => const ContactPage(),
            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }
}
