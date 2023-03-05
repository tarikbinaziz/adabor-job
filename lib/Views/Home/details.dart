import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:soclose_dhaka_ltd_task/Consts/list.dart';
import 'package:soclose_dhaka_ltd_task/Views/Home/bottom_nav_bar_home.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Consts/images.dart';
import '../../Consts/strings.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  var indexNum = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_arrow_left,
          color: titleColor,
        ).onTap(()=>const BottomNavBar().launch(context))
            .box
            .padding(const EdgeInsets.all(8))
            .margin(const EdgeInsets.only(left: 10, top: 4))
            .roundedFull
            .color(navBgColor)
            .makeCentered(),
        title: const Text(
          mensShoes,
          style: TextStyle(color: titleColor),
        ),
        actions: [
          Image.asset(
            icBag,
            color: titleColor,
            width: 20,
          )
              .box
              .padding(const EdgeInsets.all(8))
              .margin(const EdgeInsets.only(right: 20, top: 4))
              .roundedFull
              .color(navBgColor)
              .make(),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                price,
                style: TextStyle(color: subtitleColor),
              ),
              Text(
                tk3,
                style: TextStyle(
                    color: titleColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Text(
            addToCart,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: navBgColor),
          ).box.roundedLg.color(mainColor).padding(const EdgeInsets.all(10)).make()
        ],
      ).box.height(80).topRounded().color(navBgColor).padding(const EdgeInsets.symmetric(horizontal: 20)).shadowSm.make(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/s2.png"),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Image.asset("assets/images/pdisplay.png"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration:
                        const BoxDecoration(color: mainColor, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets/images/Polygon 1.png")),
                        8.widthBox,
                        InkWell(
                            onTap: () {},
                            child: Image.asset("assets/images/Polygon 2.png")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            16.heightBox,
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: navBgColor),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bestSeller.toUpperCase(),
                      style: const TextStyle(color: mainColor),
                    ),
                    6.heightBox,
                    const Text(
                      nikeAirJordan,
                      style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ),
                    12.heightBox,
                    const Text(
                      "\$967.800",
                      style: TextStyle(
                          color: titleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    8.heightBox,
                    const Text(
                      airJordanDetails,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: subtitleColor),
                    ),
                    16.heightBox,
                    const Text(
                      gallery,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    16.heightBox,
                    Row(
                        children: List.generate(
                            3,
                            (index) => Image.asset(
                                  shuImageList[index],
                                  width: 45,
                                )
                                    .box
                                    .color(bgColor)
                                    .padding(const EdgeInsets.all(10))
                                    .margin(const EdgeInsets.only(right: 16))
                                    .rounded
                                    .make())),
                    16.heightBox,
                    Row(
                      children: [
                        const Text(
                          size,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: titleColor),
                        ),
                        const Spacer(),
                        const Text(
                          "EU",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: titleColor),
                        ),
                        12.widthBox,
                        const Text(
                          "US",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: subtitleColor),
                        ),
                        12.widthBox,
                        const Text(
                          "Uk",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: subtitleColor),
                        ),
                      ],
                    ),
                    16.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            6,
                            (index) => Text(
                                  numberList[index],
                                  style: TextStyle(
                                      color: indexNum == numberList[index]
                                          ? navBgColor
                                          : titleColor),
                                )
                                    .onTap(() {
                                      setState(() {
                                        indexNum = numberList[index];
                                      });
                                    })
                                    .box
                                    .color(indexNum == numberList[index]
                                        ? mainColor
                                        : bgColor)
                                    .padding(const EdgeInsets.all(12))
                                    .roundedFull
                                    .make())),
                    100.heightBox
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
