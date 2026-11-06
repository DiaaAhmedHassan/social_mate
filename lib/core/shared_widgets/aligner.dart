import 'package:flutter/material.dart';

class Aligner extends StatelessWidget {
  const Aligner({super.key, required this.child, required this.align});
  final Widget child;
  final MainAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: align,
          children: [
           child
          ],
         );
  }
}