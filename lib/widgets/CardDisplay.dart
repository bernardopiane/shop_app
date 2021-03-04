import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/Details.dart';

import 'MyCard.dart';

class CardDisplay extends StatelessWidget {
  final String imageUrl;
  const CardDisplay({
    Key key,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailsPage(
              image: imageUrl,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Hero(
              tag: imageUrl,
              child: MyCard(
                image: imageUrl,
                ascRatio: 1 / 1.1,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text("Jacket in blue denim"),
          Text(
            "Wrangler",
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
