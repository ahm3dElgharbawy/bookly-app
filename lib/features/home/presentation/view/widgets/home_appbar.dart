import 'package:bookly_app/core/helper/app_routes.dart';
import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            child: SvgPicture.asset(
              AssetsData.search,
              height: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
