import 'package:bookly_app/core/helper/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
          splashRadius: 20,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(
            AssetsData.search,
            width: 20,
            color: const Color(0x9EFFFFFF),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Color(0x9EFFFFFF),
      ),
    );
  }
}
