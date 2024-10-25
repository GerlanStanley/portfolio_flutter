import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../core/constants/constants.dart';
import '../../../core/models/project_model.dart';
import 'experience_tile_component.dart';

class ExperiencesComponent extends StatelessWidget {
  final List<ExperienceTileComponent> projects = [
    ExperienceTileComponent(
      image: ImagesConstants.mmShortLogo,
      imageHeight: 30,
      title: 'Desenvolvedor Flutter Sênior',
      company: 'Grupo Mateus',
      period: '07/2023 - atualmente',
      projects: [
        ProjectModel(
          image: ImagesConstants.mmDelivery,
          title: 'Mateus Mais Entregas',
          description: 'Aplicativo no qual os entregadores entram '
              'em uma fila de espera; escaneiam e coletam os pedidos '
              'que estejam prontos para iniciar a entrega; recebem '
              'uma rota otimizada de acordo a localização dos endereços '
              'dos clientes; informam a localização em tempo real '
              'para os clientes; atualizar o status final do pedido.',
          urlPlayStore:
          'https://play.google.com/store/apps/details?id=br.com.mateusmais.delivery.deliveryman.app&hl=pt_BR',
          urlAppStore:
          'https://apps.apple.com/br/app/mateus-mais-entregas/id6463452582',
        ),
        ProjectModel(
          image: ImagesConstants.mmCollector,
          title: 'Mateus Mais Coletor',
          description:
          'Aplicativo em que os funcionários do supermercado '
              'iniciam e finalizam a coleta de itens do pedido. '
              'É feito uma leitura do código de barras dos produtos '
              'que estão sendo coletados; informe de quantidade e '
              'peso do produto; gerar ocorrências.',
        ),
        ProjectModel(
          image: ImagesConstants.mmLogo,
          title:
          'Link de rastreio para os pedidos do app Mateus Mais',
          description:
          'Uma página web para acompanhar a localização '
              'em tempo real do entregador.',
        ),
      ],
    ),
    ExperienceTileComponent(
      image: ImagesConstants.sautoLogo,
      imageHeight: 40,
      title: 'Desenvolvedor Mobile',
      company: 'Sauto Tecnologia',
      period: '09/2014 - 07/2023',
      projects: [
        ProjectModel(
          image: ImagesConstants.sautoPay,
          title: 'SautoPay',
          description: 'Aplicativo para gerenciamento e emissão de '
              'cobranças via pix, cartão, boleto e carnê.',
          urlPlayStore:
          'https://play.google.com/store/apps/details?id=br.sautotecnologia.sautopay&hl=pt_BR',
          urlAppStore:
          'https://apps.apple.com/mt/app/sautopay/id1623389742',
        ),
        ProjectModel(
          image: ImagesConstants.obaDelivery,
          title: 'Oba Delivery',
          description:
          'Aplicativo de delivery online que conecta vários '
              'restaurantes e empresas em uma única plataforma digital.',
          urlPlayStore:
          'https://play.google.com/store/apps/details?id=sautotecnologia.br.obadelivery&hl=pt_BR',
          urlAppStore:
          'https://apps.apple.com/br/app/oba-delivery/id1571332677',
        ),
        ProjectModel(
          image: ImagesConstants.sautoGerencial,
          title: 'Sauto Gerencial',
          description:
          'Aplicativo para venda externa no qual o vendedor '
              'tem acesso a visualizar clientes, produtos, históricos de '
              'pedidos, registrar visita ao cliente e emitir um novo '
              'pedido ou orçamento.',
          urlPlayStore:
          'https://play.google.com/store/apps/details?id=sautotecnologia.br.sautogerencial&hl=pt_BR',
          urlAppStore:
          'https://apps.apple.com/br/app/sauto-gerencial/id1144468304',
        ),
        ProjectModel(
          image: ImagesConstants.youdEducDiary,
          title: 'YouEduc: Diário',
          description:
          'Uma ferramenta desenvolvida para auxiliar e '
              'simplificar o dia a dia de professores, coordenadores e '
              'gestores da educação. Com o diário Online toda escola pode '
              'analisar, de forma simples e rápida, estatísticas de '
              'acompanhamento de frequência, notas e média dos alunos.',
          urlPlayStore:
          'https://play.google.com/store/apps/details?id=sautotecnologia.br.sautogerencial&hl=pt_BR',
        ),
      ],
    ),
    ExperienceTileComponent(
      title: 'Desenvolvedor Mobile',
      company: 'Freelancer',
      projects: [
        ProjectModel(
          image: ImagesConstants.yeloo,
          title: 'Yeloo Player',
          description: 'Aplicativo para exibição de propagandas em '
              'formato de vídeos, imagens e conteúdos dinâmicos através '
              'de uma playlist sincronizada remotamente.',
          urlWeb: 'https://www.yeloo.com.br/yeloo-player/',
        ),
      ],
    ),
  ];

  ExperiencesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    int countAxisSize = 1;
    if (size.width < SizeConstants.smallScreen) {
      countAxisSize = 1;
    }
    if (size.width > SizeConstants.smallScreen) {
      countAxisSize = 1;
    }
    if (size.width > SizeConstants.mediumScreen) {
      countAxisSize = 1;
    }
    if (size.width >= SizeConstants.maxWidthText) {
      countAxisSize = 1;
    }
    if (size.width >= SizeConstants.maxWidthContainer) {
      countAxisSize = 2;
    }

    return Column(
      children: [
        Container(
          color: ColorsConstants.primary,
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 150),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: SizeConstants.maxWidthText,
            ),
            child: Column(
              children: [
                Text(
                  'Minhas experiências',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Aqui estão minhas esperiências de trabalhos e '
                    'de alguns projetos que tive o prazer de contribuir, '
                    'onde quase todos eu atuei desde o ínicio do desenvolvimento.',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
            child: MasonryGridView.count(
              shrinkWrap: true,
              crossAxisCount: countAxisSize,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return projects[index];
              }
            ),
          ),
        ),
      ],
    );
  }
}
