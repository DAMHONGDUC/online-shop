import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/components/body.dart';
import 'package:online_shop/values/app_assets.dart';
import 'package:online_shop/values/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          Assets.iconback,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            Assets.iconcart,
            color: AppColor.TextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            Assets.iconsearch,
            color: AppColor.TextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 7,
        )
      ],
    );
  }
}
