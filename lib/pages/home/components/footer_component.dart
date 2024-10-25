import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/constants/constants.dart';
import 'contact_button.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const double spaceBetween = 20;
    return Container(
      color: ColorsConstants.primary,
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Fale comigo',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContactButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://www.linkedin.com/in/gerlan-stanley/'),
                      mode: LaunchMode.inAppBrowserView,
                    );
                  },
                  icon: FontAwesomeIcons.linkedin,
                ),
                const SizedBox(width: spaceBetween),
                ContactButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://github.com/GerlanStanley'),
                      mode: LaunchMode.inAppBrowserView,
                    );
                  },
                  icon: FontAwesomeIcons.github,
                ),
                const SizedBox(width: spaceBetween),
                ContactButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://wa.me/5588996375828'),
                      mode: LaunchMode.inAppBrowserView,
                    );
                  },
                  icon: FontAwesomeIcons.whatsapp,
                ),
                const SizedBox(width: spaceBetween),
                ContactButton(
                  onPressed: () async {
                    String mailUrl = 'mailto:gerlanstanley@outlook.com';
                    try {
                      await launchUrlString(mailUrl);
                    } catch (e) {
                      await Clipboard.setData(
                        const ClipboardData(text: 'gerlanstanley@outlook.com'),
                      );
                    }
                  },
                  icon: FontAwesomeIcons.envelope,
                ),
              ],
            ),
          ),
          Text(
            'Copyright © 2024 Gerlan Stanley. Todos os direitos reservados.',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
