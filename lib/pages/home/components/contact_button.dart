import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/constants.dart';

class ContactButton extends StatefulWidget {
  final IconData icon;
  final Function() onPressed;

  const ContactButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  State<ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              Color color = Colors.white;

              if (states.contains(WidgetState.hovered)) {
                color = ColorsConstants.primary;
              }

              if (states.contains(WidgetState.pressed)) {
                color = ColorsConstants.primary;
              }

              return color;
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.white;
              }

              if (states.contains(WidgetState.pressed)) {
                return Colors.white;
              }

              return Colors.transparent;
            },
          ),
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
            (Set<WidgetState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  width: 2,
                  color: ColorsConstants.secondaryBackground,
                ),
              );
            },
          ),
        ),
        child: FaIcon(widget.icon, size: 20),
      ),
    );
  }
}
