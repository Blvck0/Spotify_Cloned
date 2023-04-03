import 'package:flutter/material.dart';
import 'package:spotify_cloned/utilities/size_config.dart';
import 'package:spotify_cloned/widgets/texts.dart';

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

class GridSearch extends StatefulWidget {
  const GridSearch({super.key});

  @override
  State<GridSearch> createState() => _GridSearchState();
}

class _GridSearchState extends State<GridSearch> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Podcasts",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Live Events",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Made For You",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "New Releases",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Afro",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Hip-Hop",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "pop",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Party",
      "image": "",
      "color": "Colors.orange",
    },
    {
      "title": "Made For You",
      "image": "",
      "color": "Colors.orange",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: getProportionateScreenWidth(10),
        mainAxisSpacing: getProportionateScreenWidth(10),
        mainAxisExtent: getProportionateScreenWidth(120),
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            color: gridMap.elementAt(index)['color'],
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(10)),
          ),
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${gridMap.elementAt(index)['title']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(14),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
