import 'package:flutter/material.dart';
import 'package:online_shop/values/app_colors.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategories(index)),
        ),
      ],
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            categories[index],
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
}
