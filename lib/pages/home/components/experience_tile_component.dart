import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/pages/home/components/project_link_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/models/project_model.dart';
import 'card_component.dart';

class ExperienceTileComponent extends StatelessWidget {
  final String? image;
  final double? imageHeight;
  final String title;
  final String company;
  final String? period;
  final List<ProjectModel> projects;

  const ExperienceTileComponent({
    super.key,
    this.image,
    this.imageHeight,
    required this.title,
    required this.company,
    this.period,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    return CardComponent(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (period != null)
            Text(
              period!,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          if (image != null)
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Image.asset(
                image!,
                height: imageHeight,
                fit: BoxFit.fitHeight,
              ),
            ),
          if (image == null)
            Text(
              company,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          ...projects.map(
            (project) => Container(
              margin: const EdgeInsets.only(top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      project.title,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Text(
                      project.description,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    child: Wrap(
                      children: [
                        if (project.urlPlayStore != null)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: ProjectLinkButton(
                              text: 'Play Store',
                              icon: FontAwesomeIcons.googlePlay,
                              onPressed: () async {
                                await launchUrl(
                                  Uri.parse(project.urlPlayStore!),
                                  mode: LaunchMode.inAppBrowserView,
                                );
                              },
                            ),
                          ),
                        if (project.urlAppStore != null)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: ProjectLinkButton(
                              text: 'App Store',
                              icon: FontAwesomeIcons.appStoreIos,
                              onPressed: () async {
                                await launchUrl(
                                  Uri.parse(project.urlAppStore!),
                                  mode: LaunchMode.inAppBrowserView,
                                );
                              },
                            ),
                          ),
                        if (project.urlWeb != null)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: ProjectLinkButton(
                              text: 'Site',
                              icon: FontAwesomeIcons.globe,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
