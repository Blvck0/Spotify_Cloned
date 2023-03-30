import 'package:flutter/material.dart';
import 'package:spotify_cloned/utilities/size_config.dart';

import '../widgets/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                child: Row(
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
                            Positioned(
                              top: 50,
                              child: Container(
                                height: getProportionateScreenHeight(30),
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  color: Colors.blue[700],
                                ),
                              ),
                            ),
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
              ),
              SizedBox(height: getProportionateScreenHeight(250)),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: Text(
                  "Recently played",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(200)),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: Text(
                  "Try something else",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(200)),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: Text(
                  "Artists you like",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
