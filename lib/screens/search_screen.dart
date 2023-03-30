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
            children: [
              SizedBox(height: getProportionateScreenHeight(50)),
              const HeadingText(
                label: "Search",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
