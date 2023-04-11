import 'package:flutter/material.dart';
import 'package:spotify_cloned/screens/library_screen.dart';
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
    // const PremiumScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
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
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.subscriptions_rounded),

            //   // ImageIcon(
            //   //   AssetImage('images/transaction.png'),
            //   // ),
            //   label: 'Premium',
            // ),
          ],
        ),
      ),
      body: Stack(
        children: [
          screens[currentIndex],
          Positioned(
            bottom: getProportionateScreenHeight(10),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                child: Container(
                  width: getProportionateScreenWidth(355),
                  height: getProportionateScreenHeight(80),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 83, 61, 54),
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(10)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: getProportionateScreenWidth(10)),
                        height: getProportionateScreenHeight(60),
                        width: getProportionateScreenWidth(60),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(20)),
                        child: Column(
                          children: [
                            Text(
                              "DECLAN RICE",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(5),
                            ),
                            Text(
                              "Odumodublvck",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenWidth(12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.speaker_group_outlined,
                              size: getProportionateScreenWidth(30),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite_border,
                              size: getProportionateScreenWidth(30),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.play_arrow,
                              size: getProportionateScreenWidth(30),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
