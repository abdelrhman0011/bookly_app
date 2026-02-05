import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingtext,
  });

  final Animation<Offset> slidingtext;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingtext,
      child: Text("Read free books", textAlign: TextAlign.center),
    );
  }
}
