import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(child: CustomButton(
            text: "12.00\$",
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
           Expanded(child: CustomButton(
            text: "free preview",
            backgroundColor: Colors.orange,
            textcolor: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
           )),
      
        ],
      ),
    );
  }
}

