import 'package:flutter/material.dart';
import 'package:food_app/pages/foodDetails.dart';

class popularFoodCard extends StatelessWidget {
  const popularFoodCard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodDetails()));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pasta With Hum",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("4.2"),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.indigo,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.indigo,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.indigo,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                  ],
                                ),
                                Text("(12+)"),
                                SizedBox(
                                  width: 25,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$26",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.indigo),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
