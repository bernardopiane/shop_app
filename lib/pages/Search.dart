import 'package:flutter/material.dart';
import 'package:shop_app/pages/Details.dart';
import 'package:shop_app/widgets/bottomBar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(page: 4,),
      body: SafeArea(
        child: ListView(
          children: [
            MyPadding(
              border: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Search",
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
            MyPadding(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          labelText: "What are you looking for ?",
                          isDense: true,
                          labelStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Container(
                height: 128,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-shirt.png"), Text("Top", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-trousers.png"), Text("Trousers", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-shirt.png"), Text("Top", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-trousers.png"), Text("Trousers", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-shirt.png"), Text("Top", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 128,
                          width: 128,
                          color: Colors.grey.shade200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("images/ic-search-trousers.png"), Text("Trousers", style: TextStyle(color: Colors.blue))],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    )
                  ],
                ),
              ),
            ),
            MyPadding(
              child: Text(
                "My recent searches",
                style: TextStyle(fontSize: 24),
              ),
            ),
            MyPadding(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
                    child: Row(
                      children: [
                        Text(
                          "Hugo Boss",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Women, shoes",
                            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
                    child: Row(
                      children: [
                        Text(
                          "Hugo Boss",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Women, shoes",
                            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
                    child: Row(
                      children: [
                        Text(
                          "Hugo Boss",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Women, shoes",
                            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
                    child: Row(
                      children: [
                        Text(
                          "Hugo Boss",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Women, shoes",
                            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MyPadding(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 128,
                  width: double.infinity,
                  child: Image.network(
                    "https://via.placeholder.com/550",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
