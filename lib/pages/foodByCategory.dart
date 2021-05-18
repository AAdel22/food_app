import 'package:flutter/material.dart';
import 'package:food_app/widgets/myTitle.dart';
import 'package:food_app/widgets/topOffers.dart';

class FoodByCategory extends StatefulWidget {
  final String title;
  FoodByCategory(this.title);

  @override
  _FoodByCategoryState createState() => _FoodByCategoryState();
}

class _FoodByCategoryState extends State<FoodByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTitle(title: widget.title + " New Food ", fontSize: 20),
            Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return topOffers();
                  },
                ))
          ],
        ),
      ),
    );
  }
}
