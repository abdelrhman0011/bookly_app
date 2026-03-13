import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Image.asset(AssetsPath.logopath, height: 16),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.searchview);
          },
          icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 16),
        ),
      ],
    );
  }
}
