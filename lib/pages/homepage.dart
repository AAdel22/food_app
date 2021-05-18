import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/pages/foodByCategory.dart';
import 'package:food_app/widgets/myTitle.dart';
import 'package:food_app/widgets/popularFoodCard.dart';
import 'package:food_app/widgets/searchBar.dart';
import 'package:food_app/widgets/sectionCard.dart';
import 'package:food_app/widgets/topOffers.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List icons = [
  Icons.foundation_outlined,
  Icons.access_alarm_sharp,
  Icons.ac_unit_sharp,
  Icons.zoom_out_outlined,
  Icons.access_alarm
];
List titles = ['Asian', 'Egypt', 'American', 'Russa', 'Pizza'];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTitle(title: "Explore", fontSize: 30),
              searchBar(),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return sectionCard(
                          icon: icons[index], title: titles[index]);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyTitle(title: "Popular Food", fontSize: 18),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return popularFoodCard();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyTitle(title: "Top Offers", fontSize: 18),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return topOffers();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}
