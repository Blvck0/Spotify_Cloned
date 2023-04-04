import 'package:flutter/material.dart';
import 'package:spotify_cloned/utilities/size_config.dart';
import 'package:spotify_cloned/widgets/texts.dart';

import '../widgets/grids.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(50)),
              const HeadingText(
                label: "Search",
              ),
              SizedBox(height: getProportionateScreenHeight(50)),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(5)),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: getProportionateScreenWidth(30),
                      ),
                      SizedBox(width: getProportionateScreenWidth(5)),
                      Text(
                        "Artists, songs, or podcasts",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(16)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Browse all",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const GridSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
