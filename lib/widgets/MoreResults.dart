import 'package:flutter/material.dart';

import 'CardDisplay.dart';

class MoreResults extends StatelessWidget {
  const MoreResults({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 32),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
            child: CardDisplay(imageUrl: "https://picsum.photos/200/300",),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
            child: CardDisplay(imageUrl: "https://picsum.photos/300/300",),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
            child: CardDisplay(imageUrl: "https://picsum.photos/400/300",),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
            child: CardDisplay(imageUrl: "https://picsum.photos/300/500",),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
            child: CardDisplay(imageUrl: "https://picsum.photos/300/400",),
          ),
        ],
      ),
    );
  }
}
