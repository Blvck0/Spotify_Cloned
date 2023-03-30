import 'package:flutter/material.dart';
import 'package:spotify_cloned/screens/library_screen.dart';
import 'package:spotify_cloned/screens/premium_screen.dart';
import 'package:spotify_cloned/screens/search_screen.dart';
import 'package:spotify_cloned/utilities/size_config.dart';

import 'home_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const LibraryScreen(),
    const PremiumScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: SizedBox(
            height: getProportionateScreenHeight(100),
            // decoration: const BoxDecoration(
            // color: Colors.transparent,
            // backgroundBlendMode: BlendMode.dstOut,
            // ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              iconSize: getProportionateScreenWidth(24),
              currentIndex: currentIndex,
              onTap: (index) => setState(() {
                currentIndex = index;
              }),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  // ImageIcon(
                  //   AssetImage('images/home.png'),
                  // ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded),

                  // ImageIcon(
                  //   AssetImage('images/search.png'),
                  // ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_music_rounded),

                  // ImageIcon(
                  //   AssetImage('images/transaction.png'),
                  // ),
                  label: 'Your Library',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions_rounded),

                  // ImageIcon(
                  //   AssetImage('images/transaction.png'),
                  // ),
                  label: 'Premium',
                ),
              ],
            ),
          ),
          body: screens[currentIndex],
        ),
        Positioned(
          bottom: getProportionateScreenHeight(100),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Container(
              width: getProportionateScreenWidth(355),
              height: getProportionateScreenHeight(80),
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(10)),
              ),
              child: const Row(
                children: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
