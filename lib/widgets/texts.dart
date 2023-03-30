import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class HeadingText extends StatelessWidget {
  final String label;
  const HeadingText({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: getProportionateScreenWidth(20),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
