import 'package:flutter/material.dart';
import 'package:online_shop/components/item_card.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/models/ProductType.dart';
import 'package:online_shop/values/app_colors.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _pageController = PageController();
  int selectedIndex = 0;
  List<Product> currListProducts = [];
  List<Product> getProduct_withType(String type) {
    List<Product> newList = [];
    products.forEach((element) {
      if (element.type == type) newList.add(element);
    });
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            'Women',
            style: TextStyle(
                fontSize: 23,
                color: AppColor.TextColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        //Categories
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 10, right: 10),
          child: Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productType.length,
                itemBuilder: (context, index) => buildCategories(index)),
          ),
        ),
        //PageView
        Expanded(
          child: Container(
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemCount: productType.length,
                itemBuilder: (context, index) =>
                    pageViewProducts_withType(index)),
          ),
        )
      ],
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            productType[index].type.toString(),
            style: TextStyle(
                color: selectedIndex == index
                    ? AppColor.TextColor
                    : AppColor.TextLightColor,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            height: 2,
            width: 30,
            color: selectedIndex == index ? Colors.black : null,
          )
        ]),
      ),
    );
  }

  Container pageViewProducts_withType(int index_type) {
    currListProducts =
        getProduct_withType(productType[index_type].type.toString());
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
            itemCount: currListProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            itemBuilder: (context, index) =>
                itemCard(product: currListProducts[index])),
      ),
    );
  }
}
