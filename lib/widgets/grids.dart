import 'package:flutter/material.dart';

import '../utilities/size_config.dart';

class GridHome extends StatefulWidget {
  const GridHome({super.key});

  @override
  State<GridHome> createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Timeless",
      "image": "",
    },
    {
      "title": "Grime Mix",
      "image": "",
    },
    {
      "title": "Locked In",
      "image": "",
    },
    {
      "title": "Gbedu",
      "image": "",
    },
    {
      "title": "This is \n Odumodublvck",
      "image": "",
    },
    {
      "title": "Memory Card",
      "image": "",
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
        mainAxisExtent: getProportionateScreenWidth(80),
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(5)),
          ),
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: getProportionateScreenWidth(5)),
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
      "color": Colors.orange,
    },
    {
      "title": "Live Events",
      "image": "",
      "color": Colors.purple,
    },
    {
      "title": "Made For You",
      "image": "",
      "color": Colors.blue.shade800,
    },
    {
      "title": "New Releases",
      "image": "",
      "color": Colors.pink,
    },
    {
      "title": "Afro",
      "image": "",
      "color": Colors.orange.shade700,
    },
    {
      "title": "Hip-Hop",
      "image": "",
      "color": Colors.brown.shade600,
    },
    {
      "title": "pop",
      "image": "",
      "color": Colors.green,
    },
    {
      "title": "Party",
      "image": "",
      "color": Colors.teal,
    },
    {
      "title": "Made For You",
      "image": "",
      "color": Colors.yellow.shade800,
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

class GridHome2 extends StatefulWidget {
  const GridHome2({super.key});

  @override
  State<GridHome2> createState() => _GridHome2State();
}

class _GridHome2State extends State<GridHome2> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Podcasts",
      "image": "",
      "color": Colors.orange,
    },
    {
      "title": "Live Events",
      "image": "",
      "color": Colors.purple,
    },
    {
      "title": "Made For You",
      "image": "",
      "color": Colors.blue.shade800,
    },
    {
      "title": "New Releases",
      "image": "",
      "color": Colors.pink,
    },
    {
      "title": "Afro",
      "image": "",
      "color": Colors.orange.shade700,
    },
    {
      "title": "Hip-Hop",
      "image": "",
      "color": Colors.brown.shade600,
    },
    {
      "title": "pop",
      "image": "",
      "color": Colors.green,
    },
    {
      "title": "Party",
      "image": "",
      "color": Colors.teal,
    },
    {
      "title": "Made For You",
      "image": "",
      "color": Colors.yellow.shade800,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: getProportionateScreenWidth(10),
        // mainAxisSpacing: getProportionateScreenWidth(10),
        mainAxisExtent: getProportionateScreenWidth(100),
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
