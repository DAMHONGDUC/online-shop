import 'package:flutter/material.dart';
import 'package:online_shop/components/categories.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/values/app_colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Categories(),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) => itemCard(index: index)),
            ),
          ),
        )
      ],
    );
  }
}

class itemCard extends StatelessWidget {
  final int index;
  const itemCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: products[index].color,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Image.asset(products[index].image.toString()),
        ),
        Container(
            margin: const EdgeInsets.only(top: 8, bottom: 7),
            child: Text(
              products[index].title.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 117, 117, 117)),
            )),
        Text('\$' + products[0].price.toString(),
            style: TextStyle(
                color: AppColor.TextColor, fontWeight: FontWeight.bold))
      ],
    );
  }
}
