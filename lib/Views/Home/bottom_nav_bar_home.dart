import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import '../../Consts/images.dart';
import 'home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;

  var pages=[const HomeScreen(),const HomeScreen(),const HomeScreen(),const HomeScreen(),];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: bgColor,
      bottomNavigationBar: Container(
        width: size.width,
        height: 80,
        // color: navBgColor,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: MyCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: mainColor.withOpacity(0.60),
                      blurRadius: 20,
                      offset: const Offset(0, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: FloatingActionButton(
                    backgroundColor: mainColor,
                    elevation: 0.1,
                    onPressed: () {},
                    child: Image.asset(icBag,width: 25,)),
              ),
            ),
            SizedBox(
              width: size.width,
              height: 80,
              // color: navBgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Image.asset(
                      icHome,
                      width: 25,
                      color: currentIndex == 0
                          ? mainColor
                          : subtitleColor,
                    ),
                    //IconlyLight.home

                    onPressed: () {
                      setState(() {
                        currentIndex=0;

                      });

                     // HomeScreen().launch(context);


                    },
                    //splashRadius: 1,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  IconButton(
                    icon: Icon(
                      BootstrapIcons.heart,
                      size: 20,
                      color: currentIndex == 1
                          ?mainColor
                          : subtitleColor,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex=1;

                      });
                    },
                    //splashRadius: 1,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                    icon: Icon(
                      IconlyLight.notification,
                      color: currentIndex == 2
                          ? mainColor
                          : subtitleColor,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex=2;

                      });
                    },
                    // splashRadius: 1,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  IconButton(
                    icon: Icon(
                      IconlyLight.profile,
                      color: currentIndex == 3
                          ? mainColor
                          :subtitleColor,
                    ),
                    onPressed: () {
                      setState(() {
                        currentIndex=3;

                      });
                    },
                    // splashRadius: 1,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body:pages[currentIndex] ,
    );
  }
}

class MyCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0 = Paint()
      ..color = navBgColor
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(0,0);
    path0.quadraticBezierTo(size.width*0.1404625,size.height*0.2995500,size.width*0.3703125,size.height*0.2449500);
    path0.cubicTo(size.width*0.4080375,size.height*0.2918000,size.width*0.3849250,size.height*0.4425500,size.width*0.3995250,size.height*0.5893500);
    path0.cubicTo(size.width*0.4459250,size.height*0.8050000,size.width*0.5588750,size.height*0.7923000,size.width*0.5995500,size.height*0.6060500);
    path0.cubicTo(size.width*0.6201625,size.height*0.4683500,size.width*0.5840250,size.height*0.2839000,size.width*0.6260000,size.height*0.2476500);
    path0.quadraticBezierTo(size.width*0.8605750,size.height*0.3003000,size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
    canvas.drawShadow(path0, shadowColor.withOpacity(0.12), -1.2, false);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}







