import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';

class ProjectLinkButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function() onPressed;

  const ProjectLinkButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  State<ProjectLinkButton> createState() => _ProjectLinkButtonState();
}

class _ProjectLinkButtonState extends State<ProjectLinkButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            return ColorsConstants.secondary;
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorsConstants.secondaryBackground.withOpacity(0.9);
            }

            if (states.contains(WidgetState.pressed)) {
              return ColorsConstants.secondaryBackground.withOpacity(0.9);
            }

            return ColorsConstants.secondaryBackground;
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsets>(
          (Set<WidgetState> states) {
            return const EdgeInsets.symmetric(horizontal: 10, vertical: 10);
          },
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
          (Set<WidgetState> states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            );
          },
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            return GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorsConstants.secondary,
              ),
            );
          },
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(widget.icon, size: 14),
          Container(
            margin: const EdgeInsets.only(left: 4),
            child: Text(widget.text),
          ),
        ],
      ),
    );
  }
}
