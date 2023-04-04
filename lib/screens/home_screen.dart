import 'package:flutter/material.dart';
import 'package:spotify_cloned/utilities/lists.dart';
import 'package:spotify_cloned/utilities/size_config.dart';

import '../widgets/appbar.dart';
import '../widgets/cards.dart';
import '../widgets/grids.dart';
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
      appBar: homeScreenAppBar(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const GridHome(),
              SizedBox(height: getProportionateScreenHeight(40)),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: const HeadingText(
                  label: "Recently played",
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(recentlyPlayed.length, (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(5)),
                      child: GestureDetector(
                        onTap: () {},
                        child: SongCards(
                          color: recentlyPlayed.elementAt(index)['color'],
                          label: recentlyPlayed.elementAt(index)['title'],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: const HeadingText(
                  label: "Try something else",
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(recentlyPlayed.length, (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(5)),
                      child: GestureDetector(
                        onTap: () {},
                        child: SongCards(
                          color: trySomethingElse.elementAt(index)['color'],
                          label: trySomethingElse.elementAt(index)['title'],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: const HeadingText(
                    label: "Artists you like",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
