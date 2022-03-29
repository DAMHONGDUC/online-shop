import 'package:flutter/material.dart';
import 'package:online_shop/models/Product.dart';
import 'package:online_shop/models/ProductType.dart';
import 'package:online_shop/values/app_colors.dart';

class itemCard extends StatelessWidget {
  final Product product;
  const itemCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Image.asset(product.image.toString()),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 8, bottom: 7),
            child: Text(
              product.title.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 117, 117, 117)),
            )),
        Text('\$' + product.price.toString(),
            style: TextStyle(
                color: AppColor.TextColor, fontWeight: FontWeight.bold))
      ],
    );
  }
}
