import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final double? width;
  final double? height;

  const CardComponent({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.14),
            blurRadius: 3.0,
            offset: const Offset(0.0, 0.0),
            spreadRadius: 0.0,
            blurStyle: BlurStyle.normal,
          )
        ],
        borderRadius: borderRadius,
        color: Colors.white,
      ),
      child: child,
    );
  }
}
