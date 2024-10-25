import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class AppBarDelegate extends SliverPersistentHeaderDelegate {
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey experiencesKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  AppBarDelegate({
    required this.homeKey,
    required this.aboutKey,
    required this.experiencesKey,
    required this.projectsKey,
    required this.contactKey,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shrinkOffset > 0
            ? <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  blurRadius: 20.0,
                  offset: const Offset(0.0, 0.0),
                  spreadRadius: 0.0,
                  blurStyle: BlurStyle.normal,
                )
              ]
            : null,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () async {
                    Scrollable.ensureVisible(
                      homeKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Image.asset(
                    ImagesConstants.gsLogo,
                    height: 40,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  Scrollable.ensureVisible(
                    homeKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Início'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  Scrollable.ensureVisible(
                    aboutKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Sobre'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  Scrollable.ensureVisible(
                    experiencesKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Experiências'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  Scrollable.ensureVisible(
                    projectsKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Projetos'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () async {
                  Scrollable.ensureVisible(
                    contactKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Contato'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
