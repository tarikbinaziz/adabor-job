import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:soclose_dhaka_ltd_task/Consts/list.dart';
import 'package:soclose_dhaka_ltd_task/Views/Home/details.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:badges/badges.dart' as badges;
import '../../Consts/images.dart';
import '../../Consts/strings.dart';
import '../widgets/sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isSelect=false;
  bool isOpened = false;
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final state = _endSideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    } else {
      final state0 = _sideMenuKey.currentState!;
      if (state0.isOpened) {
        state0.closeSideMenu();
      } else {
        state0.openSideMenu();
      }
    }
  }
  @override
  Widget build(BuildContext context) {

    return SideMenu(
      key: _sideMenuKey,
      background: titleColor,
      menu: buildMenu(),
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      type: SideMenuType.shrikNRotate,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          centerTitle: true,
          elevation: 0,
          leading: Image.asset(
            icMenu,
          ).onTap((){
            toggleMenu();
          })
              .box
              .padding(const EdgeInsets.all(8))
              .margin(const EdgeInsets.only(left: 20, top: 4))
              .roundedFull
              .color(navBgColor)
              .make(),
          title: Column(
            children: [
              const Text(
                storeLocation,
                style: TextStyle(color: subtitleColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    IconlyBold.location,
                    color: locationIconColor,
                  ),
                  8.widthBox,
                  const Text(
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
              badgeStyle: const badges.BadgeStyle(badgeColor: locationIconColor),
              child: Image.asset(
                icBag,
                color: titleColor,
                width: 20,
              )
                  .box
                  .padding(const EdgeInsets.all(8))
                  .margin(const EdgeInsets.only(right: 20, top: 12))
                  .roundedFull
                  .color(navBgColor)
                  .make(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      hintText: lookingForShoes,
                      filled: true,
                      fillColor: navBgColor,
                      hintStyle: const TextStyle(color: subtitleColor),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: Icon(
                          IconlyLight.search,
                        ),
                      )),
                ),
                32.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/nike.png",
                          width: 25,
                        ),
                        6.widthBox,
                        const Text(
                          "Nike",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ).onTap((){
                      setState(() {
                        isSelect=!isSelect;
                      });
                      const DetailsScreen().launch(context);
                    })
                        .box
                        .roundedLg
                        .padding(const EdgeInsets.all(16))
                        .color(isSelect==true?mainColor:navBgColor)
                        .make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          4,
                          (index) => Image.asset(
                                brandImageList[index],
                                width: 25,
                              )
                                  .box
                                  .roundedFull
                                  .padding(const EdgeInsets.all(16))
                              .color(navBgColor)
                                  .make()),
                    )
                  ],
                ),
                38.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      popularShoes,
                      style:
                          TextStyle(color: titleColor, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(
                        color: mainColor,
                      ),
                    )
                  ],
                ),
                16.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/images/s1.JPG",
                                  width: 120,
                                ),
                                10.heightBox,
                                Text(
                                  bestSeller.toUpperCase(),
                                  style: const TextStyle(color: mainColor),
                                ),
                                6.heightBox,
                                const Text(
                                  nikeJordan,
                                  style: TextStyle(
                                      color: titleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                12.heightBox,
                                const Text(
                                  tk,
                                  style: TextStyle(
                                      color: titleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                                  .box
                                  .topLeftRounded()
                                  .color(mainColor)
                                  .padding(const EdgeInsets.all(4))
                                  .make())
                        ],
                      ).box.color(navBgColor).clip(Clip.antiAlias).rounded.make(),
                    ),
                    21.widthBox,
                    Expanded(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Image.asset(
                                    "assets/images/s2.JPG",
                                    width: 120,
                                  ),
                                ),
                                10.heightBox,
                                Text(
                                  bestSeller.toUpperCase(),
                                  style: const TextStyle(color: mainColor),
                                ),
                                6.heightBox,
                                const Text(
                                  nikeJordan,
                                  style: TextStyle(
                                      color: titleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                12.heightBox,
                                const Text(
                                  tk2,
                                  style: TextStyle(
                                      color: titleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                                  .box
                                  .topLeftRounded()
                                  .color(mainColor)
                                  .padding(const EdgeInsets.all(4))
                                  .make())
                        ],
                      ).box.color(navBgColor).clip(Clip.antiAlias).rounded.make(),
                    ),
                  ],
                ),
                16.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      newArrivals,
                      style:
                          TextStyle(color: titleColor, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      seeAll,
                      style: TextStyle(
                        color: mainColor,
                      ),
                    )
                  ],
                ),
                16.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bestChoice.toUpperCase(),
                          style: const TextStyle(color: mainColor),
                        ),
                        6.heightBox,
                        const Text(
                          nikeAirJordan,
                          style: TextStyle(
                              color: titleColor,
                              fontWeight: FontWeight.w500),
                        ),
                        10.heightBox,
                        const Text(
                          tk3,
                          style: TextStyle(
                              color: titleColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: mainColor.withOpacity(0.15),
                            blurRadius: 20,
                            spreadRadius: 0.5,
                            offset: const Offset(20, 20), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/s3.png",
                        width: 120,
                      ),
                    ),
                  ],
                ).box.color(navBgColor).padding(const EdgeInsets.all(20)).rounded.make(),
                100.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
