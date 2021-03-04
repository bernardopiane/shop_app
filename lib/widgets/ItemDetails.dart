import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Twerk it",
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "Long 3/4 sleeves, sweatshirt",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("£200"),
              Text(
                "VAT included",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
