import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/constants.dart';
import 'card_component.dart';

class TechComponent extends StatelessWidget {
  const TechComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -80.0, 0.0),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: SizeConstants.maxWidthText,
        ),
        child: CardComponent(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 35,
                child: FaIcon(FontAwesomeIcons.laptopCode, size: 25),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  'Desenvolvedor Mobile',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 14),
                child: Text(
                  'Adoro desenvolver apps que transformam ideias em realidade!',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Text(
                  'Linguagens e frameworks:',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: ColorsConstants.primary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  'Flutter, Dart, Java, Swift',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Text(
                  'Dev Tools:',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: ColorsConstants.primary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  'Android\n'
                  'iOS\n'
                  'Android Studio\n'
                  'VS Code\n'
                  'Github\n'
                  'Gitlab\n'
                  'Azure\n'
                  'CodeMagic\n'
                  'Firebase\n'
                  'Material Design',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
