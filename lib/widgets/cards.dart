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

class LibraryCards extends StatelessWidget {
  final String label;
  final Color? color;
  const LibraryCards({
    super.key,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: getProportionateScreenWidth(40),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            Text(
              "Artist",
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(12),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LibrarySubCards extends StatelessWidget {
  final String label;
  const LibrarySubCards({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(10),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.white,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(12),
        ),
      ),
    );
  }
}
