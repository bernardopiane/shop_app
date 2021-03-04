import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/pages/Checkout.dart';
import 'package:shop_app/pages/Search.dart';

class BottomBar extends StatefulWidget {
  final int page;

  const BottomBar({Key key, this.page}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool changeRoute(int i) {
    if (i == widget.page) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                if (changeRoute(1)) Navigator.push(context, CupertinoPageRoute(builder: (context) => MyHome()));
              },
              child: Icon(
                Icons.now_wallpaper,
                color: widget.page == 1 ? Colors.blue : Colors.black,
              )),
          GestureDetector(
            onTap: () {
              // if (changeRoute(2)) Navigator.push(context, CupertinoPageRoute(builder: (context) => MyHome()));
            },
            child: Icon(
              Icons.favorite_border,
              color: widget.page == 2 ? Colors.blue : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (changeRoute(3)) Navigator.push(context, CupertinoPageRoute(builder: (context) => CheckoutPage()));
            },
            child: Icon(
              Icons.shop_outlined,
              color: widget.page == 3 ? Colors.blue : Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (changeRoute(4)) Navigator.push(context, CupertinoPageRoute(builder: (context) => SearchPage()));
            },
            child: Icon(
              Icons.search,
              color: widget.page == 4 ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
