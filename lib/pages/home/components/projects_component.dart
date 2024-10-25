import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/constants.dart';
import '../../../core/models/project_model.dart';
import 'card_component.dart';
import 'project_link_button.dart';

class ProjectsComponent extends StatelessWidget {
  final List<ProjectModel> projects = [
    ProjectModel(
      title: 'Pokedex',
      description: 'Utilização de Cubit(BLoC), Flutter Modular, Dio, Hive, '
          'Mocktail, bloc_test',
      urlWeb: 'https://github.com/GerlanStanley/pokedex',
    ),
    ProjectModel(
      title: 'Random User',
      description: 'Utilização de MobX, Flutter Modular, Dio, '
          'Mocktail, Shared Preferences',
      urlWeb: 'https://github.com/GerlanStanley/random_user',
    ),
    ProjectModel(
      title: 'MCU',
      description: 'Utilização de BLoC, GetIt, Dio, '
          'Mocktail, bloc_test',
      urlWeb: 'https://github.com/GerlanStanley/mcu',
    ),
    ProjectModel(
      title: 'Game Lovers',
      description: 'Utilização de BLoC, Provider, Dio, '
          'SharedPreferences, Drift/Moor, Mocktito, bloc_test',
      urlWeb: 'https://github.com/GerlanStanley/game_lovers',
    ),
    ProjectModel(
      title: 'Portfólio',
      description: 'O código desse portfólio que foi desenvolvido com Flutter',
      urlWeb: 'https://github.com/GerlanStanley/portfolio_flutter',
    ),
  ];

  ProjectsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    int countAxisSize = 1;
    double childAspectRatio = 2;
    if (size.width < SizeConstants.smallScreen) {
      countAxisSize = 1;
      childAspectRatio = 1.6;
    }
    if (size.width < SizeConstants.verySmallScreen) {
      countAxisSize = 1;
      childAspectRatio = 1.4;
    }
    if (size.width > SizeConstants.smallScreen) {
      countAxisSize = 1;
      childAspectRatio = 2.4;
    }
    if (size.width > SizeConstants.mediumScreen) {
      countAxisSize = 1;
      childAspectRatio = 2.9;
    }
    if (size.width >= SizeConstants.maxWidthText) {
      countAxisSize = 2;
      childAspectRatio = 1.55;
    }
    if (size.width >= SizeConstants.maxWidthContainer) {
      countAxisSize = 3;
      childAspectRatio = 1.35;
    }

    return Column(
      children: [
        Container(
          color: ColorsConstants.primary,
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 150),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: SizeConstants.maxWidthText,
              ),
              child: Column(
                children: [
                  Text(
                    'Projetos pessoais',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Estes projetos pessoais que realizei foram pensados '
                    'com o objetivo de aprofundar meu aprendizado e '
                    'expandir minhas habilidades, refletindo minha dedicação '
                    'ao desenvolvimento contínuo.',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -80.0, 0.0),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: SizeConstants.maxWidthContainer,
            ),
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: countAxisSize,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: childAspectRatio,
              children: projects.map((project) {
                return CardComponent(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        project.title,
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          project.description,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: ProjectLinkButton(
                          text: 'Github',
                          icon: FontAwesomeIcons.github,
                          onPressed: () async {
                            await launchUrl(
                              Uri.parse(project.urlWeb!),
                              mode: LaunchMode.inAppBrowserView,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
