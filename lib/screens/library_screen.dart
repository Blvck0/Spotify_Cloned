import 'package:flutter/material.dart';
import 'package:spotify_cloned/utilities/size_config.dart';
import 'package:spotify_cloned/widgets/buttons.dart';
import 'package:spotify_cloned/widgets/cards.dart';
import 'package:spotify_cloned/widgets/texts.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            top: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  const HeadingText(label: "Your Library"),
                  const Spacer(),
                  HomeIconButton(
                    onpressed: () {},
                    icon: Icons.search,
                  ),
                  // SizedBox(width: getProportionateScreenWidth(10)),
                  HomeIconButton(
                    onpressed: () {},
                    icon: Icons.add,
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                children: [
                  const LibrarySubCards(label: "Playlists"),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  const LibrarySubCards(label: "Artists"),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  const LibrarySubCards(label: "Downloaded"),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                children: [
                  Icon(
                    Icons.swap_vert,
                    size: getProportionateScreenWidth(16),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    "Most recent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(12),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.apps,
                    size: getProportionateScreenWidth(16),
                    color: Colors.white,
                  ),
                  SizedBox(width: getProportionateScreenWidth(5)),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                children: [
                  Container(
                    color: Colors.blue.shade800,
                    height: getProportionateScreenHeight(80),
                    width: getProportionateScreenWidth(80),
                    child: Center(
                      child: Icon(
                        Icons.folder,
                        color: Colors.green,
                        size: getProportionateScreenWidth(40),
                      ),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Local Files",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Row(
                        children: [
                          const Icon(
                            Icons.arrow_circle_down_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(width: getProportionateScreenWidth(5)),
                          Text(
                            "Playlist",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getProportionateScreenWidth(12),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Text(
                            "17 tracks",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getProportionateScreenWidth(12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const LibraryCards(
                label: 'Burna Boy',
                color: Colors.red,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const LibraryCards(
                label: 'Seyi Vibez',
                color: Colors.white,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const LibraryCards(
                label: 'Wizkid',
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
