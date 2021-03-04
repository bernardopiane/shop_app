import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shop_app/widgets/bottomBar.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(page: 3,),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 24),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.orange,
                    child: Icon(
                      Icons.person_outline_rounded,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(8.0),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                height: 8,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                children: [
                  Dismissible(
                    key: new Key(""),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Colors.grey.shade100,
                          padding: EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("images/ic-cart-gift.png"),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "-10%",
                                    style: TextStyle(color: Colors.blue, fontSize: 24),
                                  ),
                                  Text("Enjoy Student Discount"),
                                ],
                              ),
                              Text(
                                "Give a gift",
                                style: TextStyle(color: Colors.blue, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Slidable(
                    key: Key("item"),
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.2,
                    child: CartItem(),
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {},
                      ),
                    ],
                  ),
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.2,
                    child: CartItem(),
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {},
                      ),
                    ],
                  ),
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.2,
                    child: CartItem(),
                    secondaryActions: <Widget>[
                      IconSlideAction(
                        caption: 'Delete',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total price"),
                      Text(
                        "VAT Included",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.blue.shade600,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          "\$ 400",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var exItem = {
      "name": "Jack in blue denim",
      "url": 'https://picsum.photos/600',
      "type": "Wrangler",
      "size": "S",
      "price": "400",
    };

    return Stack(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 32, top: 16, bottom: 16, right: 8),
                height: 156,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(exItem.entries.elementAt(1).value),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(exItem.entries.elementAt(0).value),
                  SizedBox(
                    height: 16,
                  ),
                  Text(exItem.entries.elementAt(2).value),
                  Text("Size: " + exItem.entries.elementAt(3).value),
                  Row(
                    children: [
                      Text("Color: "),
                      Container(
                        width: 7.0,
                        height: 7.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                      ),
                    ],
                  ),
                  Text("Quantity: 1"),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 16,
          right: 48,
          child: Text(
            "\$ " + exItem.entries.elementAt(4).value,
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
