import 'package:flutter/material.dart';
import 'package:habitat_metadev/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    const List<String> furnitureItems = ["assets/images/dena-grey1.jpeg", "assets/images/dena-white1.jpeg"];
    const List<String> plantsItems = ["assets/images/bottom_img_1.png", "assets/images/bottom_img_2.png"];
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Furniture", press: () {}),
          const FeaturedPlants(listItems: furnitureItems),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(listItems: plantsItems),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
