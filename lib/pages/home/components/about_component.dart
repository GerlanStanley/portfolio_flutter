import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsConstants.primary,
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 160),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: SizeConstants.maxWidthText,
          ),
          child: Column(
            children: [
              Text(
                'Oi, me chamo Gerlan Stanley.',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  'Sou formado em ciência da computação e atuo no '
                  'desenvolvimento mobile desde 2014. '
                  'Trabalho profissionalmente com Flutter desde 2018, '
                  'no qual é o framework que estou especializado. '
                  'Já atuei em aplicativos de diversos ramos, '
                  'como: delivery, financeiro e mídia indoor. '
                  'Também possuo experiência com desenvolvimento de '
                  'aplicativos nativos android e iOS utilizando as '
                  'linguagens Java e Swift. '
                  'Minhas principais habilidades são de desenvolver '
                  'aplicações bem arquitetadas e seguir boas '
                  'práticas de desenvolvimento.',
                  style: Theme.of(context).textTheme.headlineMedium,
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
