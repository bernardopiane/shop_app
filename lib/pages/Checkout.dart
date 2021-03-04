import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/pages/Details.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  var _address = "1";

  int _activeShipping = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 64,
        child: BottomAppBar(
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total price \$430"),
                    Text("VAT Included", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          MyPadding(
            border: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(fontSize: 22),
                ),
                RawMaterialButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      CupertinoPageRoute(builder: (context) => MyHome()),
                    );
                  },
                  elevation: 2.0,
                  fillColor: Colors.grey.shade400,
                  child: Icon(
                    Icons.close,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(8.0),
                  shape: CircleBorder(),
                ),
              ],
            ),
          ),
          MyPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Payment",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  width: 64,
                ),
                Text(
                  "Summary",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          MyPadding(
            border: true,
            child: Text(
              "Delivery address",
              style: TextStyle(fontSize: 24),
            ),
          ),
          MyPadding(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Gauthier Drewitt",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "7303 W Alexander Rd",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "Las Vegas, NV 89129",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "USA",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.0,
                  child: Radio(
                      value: "1",
                      groupValue: _address,
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        setState(() {
                          _address = value;
                        });
                      }),
                ),
              ],
            ),
          ),
          MyPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "New Address",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                Transform.scale(
                  scale: 1.5,
                  child: Radio(
                      value: "2",
                      groupValue: _address,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          _address = value;
                        });
                      }),
                )
              ],
            ),
          ),
          MyPadding(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _activeShipping = 1;
                });
              },
              child: CardShipping(
                isActive: _activeShipping == 1 ? true : false,
                value: 0,
              ),
            ),
          ),
          MyPadding(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _activeShipping = 2;
                });
              },
              child: CardShipping(
                value: 25,
                time: "1 day",
                isActive: _activeShipping == 2 ? true : false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardShipping extends StatefulWidget {
  final int value;
  final String time;
  final bool isActive;

  const CardShipping({
    Key key,
    this.value,
    this.time,
    this.isActive = false,
  }) : super(key: key);

  @override
  _CardShippingState createState() => _CardShippingState();
}

class _CardShippingState extends State<CardShipping> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/ic-cart-track_1.png"),
                widget.value == 0
                    ? buildFree()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get premium shipment"),
                          SizedBox(height: 12),
                          Text(
                            "Delivery time ${widget.time} h",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                Text("\$${widget.value}", style: TextStyle(color: Colors.blue, fontSize: 24)),
              ],
            ),
          ),
          widget.isActive
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4)),
                    child: Container(
                      color: Colors.orange,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Column buildFree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Free shipment"),
        SizedBox(height: 12),
        Text("Free shipment over 100\$", style: TextStyle(color: Colors.grey.shade600)),
        Text("Delivery time 2-3 days", style: TextStyle(color: Colors.grey.shade600)),
      ],
    );
  }
}
