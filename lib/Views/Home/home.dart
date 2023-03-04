import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:badges/badges.dart' as badges;

import '../../Consts/images.dart';
import '../../Consts/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        leading: Image.asset(
          icMenu,
        )
            .box
            .padding(EdgeInsets.all(8))
            .margin(EdgeInsets.only(left: 20, top: 4))
            .roundedFull
            .color(navBgColor)
            .make(),
        title: Column(
          children: [
            Text(
              storeLocation,
              style: TextStyle(color: subtitleColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  IconlyBold.location,
                  color: locationIconColor,
                ),
                8.widthBox,
                Text(
                  mondolibugSylhet,
                  style: TextStyle(color: titleColor),
                ),
              ],
            )
          ],
        ),
        actions: [
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: 12, end: 22),
            badgeStyle: badges.BadgeStyle(badgeColor: locationIconColor),
            child: Image.asset(
              icBag,
              color: titleColor,
              width: 20,
            )
                .box
                .padding(EdgeInsets.all(8))
                .margin(EdgeInsets.only(right: 20, top: 12))
                .roundedFull
                .color(navBgColor)
                .make(),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          AppTextField(
            textFieldType: TextFieldType.NAME,
            decoration: InputDecoration(
                hintText: lookingForShoes,
                filled: true,
                fillColor: navBgColor,
                hintStyle: TextStyle(color: subtitleColor),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Icon(
                    IconlyLight.search,
                  ),
                )),
          ),
        ],),
      ),
    );
  }
}
