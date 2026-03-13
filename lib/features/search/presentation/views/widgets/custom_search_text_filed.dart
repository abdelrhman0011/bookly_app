import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField (
      decoration: InputDecoration(
        hintText: "Search",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white)
        ),
      suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass, size: 16, color: Colors.grey,),
      ),
    );
  }
}