import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class SongCards extends StatelessWidget {
  final Color color;
  final dynamic label;
  const SongCards({
    required this.color,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(150),
      height: getProportionateScreenHeight(150),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(5),
          left: getProportionateScreenWidth(10),
          bottom: getProportionateScreenHeight(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage(
                "images/spotify_logo.png",
              ),
              color: color,
              height: getProportionateScreenHeight(20),
              width: getProportionateScreenWidth(20),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
