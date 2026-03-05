import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),
        const SizedBox(width: 6),
        Text("4.5", style: Styles.textstyle16),
        SizedBox(width: 5),
        Text("(200)", style: Styles.textstyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}