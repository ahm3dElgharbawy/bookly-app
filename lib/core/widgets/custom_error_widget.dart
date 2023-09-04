import 'package:bookly_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMsg;
  const CustomErrorWidget({super.key,required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Text(errorMsg,style: Styles.textStyle18,);
  }
}