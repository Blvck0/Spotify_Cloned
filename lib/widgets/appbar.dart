import 'package:flutter/material.dart';
import 'package:spotify_cloned/widgets/texts.dart';
import 'buttons.dart';

homeScreenAppBar() {
  return AppBar(
    // margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
    backgroundColor: Colors.black,
    forceMaterialTransparency: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HeadingText(
          label: "Good evening ",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                HomeIconButton(
                  icon: Icons.notifications_none,
                  onpressed: () {},
                ),
                // Positioned(
                //   top: 50,
                //   child: Container(
                //     height: getProportionateScreenHeight(30),
                //     decoration: BoxDecoration(
                //       // shape: BoxShape.circle,
                //       color: Colors.blue[700],
                //     ),
                //   ),
                // ),
              ],
            ),
            HomeIconButton(
              icon: Icons.av_timer_rounded,
              onpressed: () {},
            ),
            HomeIconButton(
              icon: Icons.settings_outlined,
              onpressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
