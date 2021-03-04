import 'package:flutter/material.dart';
import 'package:shop_app/widgets/ItemDetails.dart';
import 'package:shop_app/widgets/MoreResults.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailsPage extends StatefulWidget {
  final String image;

  const DetailsPage({Key key, this.image}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Hero(
                  tag: widget.image,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: double.infinity,
                      height: 256,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: 256,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                        items: [
                          Image.network(
                            widget.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            widget.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            widget.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            widget.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            widget.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      // child: Image.network(
                      //   widget.image,
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                ),
                Align(
                alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    child: Text(_current.toString()),
                  ),
                ),
                Positioned(
                  top: 32,
                  right: 16,
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white30,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 24,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 72,
                  child: Icon(
                    Icons.upload_outlined,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: -16,
                  right: 16,
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.blue,
                    child: Icon(
                      Icons.add_shopping_cart_outlined,
                      size: 16.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            ItemDetails(),
            ItemMaterial(),
            ItemReview(),
            ItemDescription(),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
              child: Text(
                "More Results",
                style: TextStyle(fontSize: 22),
              ),
            ),
            MoreResults(),
          ],
        ),
      ),
    );
  }
}

class MyPadding extends StatelessWidget {
  final Widget child;
  final bool border;

  const MyPadding({Key key, this.child, this.border = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        decoration: border ? BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12, width: 1))) : null,
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 16), child: child),
      ),
    );
  }
}

class ItemMaterial extends StatelessWidget {
  const ItemMaterial({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPadding(
      border: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit_outlined,
            color: Colors.grey,
          ),
          Text("100% Cotton"),
        ],
      ),
    );
  }
}

class ItemReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPadding(
      border: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(Icons.thumb_up_alt_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text("4,5/5"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "Reviews 12",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 16,
                      color: Colors.black26,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ItemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyPadding(
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat mattis dolor, ut gravida nunc feugiat ut. Aliquam consequat orci eu ante dictum elementum. Curabitur lacus quam, porta sit amet semper id, tincidunt et orci. Maecenas diam augue, consectetur eget dolor id, pretium auctor tortor. Sed dignissim nibh a iaculis bibendum. Phasellus ultrices, velit a lacinia posuere, dui dolor bibendum odio, eu pretium lorem diam et odio. Nam quis gravida enim. Sed non tristique nunc."),
    );
  }
}
