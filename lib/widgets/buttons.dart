import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class HomeIconButton extends StatelessWidget {
  final Function() onpressed;
  final IconData icon;
  const HomeIconButton(
      {super.key, required this.onpressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Icon(
        icon,
        size: getProportionateScreenWidth(30),
        weight: getProportionateScreenWidth(20),
        color: Colors.white,
      ),
    );
  }
}
