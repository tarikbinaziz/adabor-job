
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:soclose_dhaka_ltd_task/Consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget buildMenu() {
  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/p.png"),
                radius: 22.0,
              ),
              SizedBox(height: 16.0),
              Text(
                "Hey, 👋",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 6,),
              Text(
                "alisson becker",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(IconlyLight.profile, size: 20.0, color: subtitleColor),
          title: const Text("Profile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          textColor: navBgColor,
          dense: true,
        ),
        ListTile(
          onTap: () {},
          leading:Image.asset(icHome,width: 20,color: subtitleColor,),
          title: const Text("Home Page",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:Image.asset(icBag,width: 20,color: subtitleColor,),
          title: const Text("My Cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading: const Icon(BootstrapIcons.heart,
              size: 20.0, color: subtitleColor),
          title: const Text("Favorite",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:Image.asset("assets/images/truck.png",width: 20,color: subtitleColor,),
          title: const Text("Orders",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        ListTile(
          onTap: () {},
          leading:Image.asset("assets/images/noti.png",width: 20,color: subtitleColor,),
          title: const Text("Notifications",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        const Divider(color: subtitleColor,endIndent: 120,indent: 14,),
        ListTile(
          onTap: () {},
          leading:Image.asset("assets/images/Sign Out.png",width: 20,color: subtitleColor,),
          title: const Text("Sign Out",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
          textColor: navBgColor,
          dense: true,

          // padding: EdgeInsets.zero,
        ),
        const SizedBox(height: 30,)

      ],
    ),
  );
}
