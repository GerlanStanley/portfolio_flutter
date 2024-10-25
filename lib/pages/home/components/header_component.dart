import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: size.width >= SizeConstants.maxWidthContainer ? 70 : 50),
            child: Text(
              'Desenvolvedor Mobile',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.width >= SizeConstants.maxWidthContainer ? 20 : 16),
            child: Text(
              'Adoro criar apps incríveis com código limpo e eficiente!',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.width >= SizeConstants.maxWidthContainer ? 70 : 60),
            child: CircleAvatar(
              radius: size.width >= 1000 ? 100 : 80,
              backgroundColor: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipOval(
                  child: Image.asset(ImagesConstants.me),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.width >= SizeConstants.maxWidthContainer ? 70 : 60),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: SizeConstants.maxWidthText,
              ),
              child: Image.asset(ImagesConstants.devices),
            ),
          ),
        ],
      ),
    );
  }
}
