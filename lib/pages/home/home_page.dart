import 'package:flutter/material.dart';

import 'components/about_component.dart';
import 'components/app_bar_delegate.dart';
import 'components/experiences_component.dart';
import 'components/footer_component.dart';
import 'components/header_component.dart';
import 'components/projects_component.dart';
import 'components/tech_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final experiencesKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // controller: _controller,
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: AppBarDelegate(
              homeKey: homeKey,
              aboutKey: aboutKey,
              experiencesKey: experiencesKey,
              projectsKey: projectsKey,
              contactKey: contactKey,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeaderComponent(key: homeKey),
                  AboutComponent(key: aboutKey),
                  const TechComponent(),
                  ExperiencesComponent(key: experiencesKey),
                  ProjectsComponent(key: projectsKey),
                  FooterComponent(key: contactKey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
