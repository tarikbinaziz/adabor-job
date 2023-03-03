import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                clipBehavior: Clip.none, children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: MyCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(backgroundColor: Colors.orange, child: Icon(Icons.shopping_basket), elevation: 0.1, onPressed: () {}),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.restaurant_menu,
                              color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class MyCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(0,0);
    path0.quadraticBezierTo(size.width*0.2798250,size.height*0.2787000,size.width*0.3750000,size.height*0.2500000);
    path0.cubicTo(size.width*0.4192125,size.height*0.2599500,size.width*0.3878000,size.height*0.5659500,size.width*0.4049375,size.height*0.6101000);
    path0.cubicTo(size.width*0.4532000,size.height*0.6712000,size.width*0.5734125,size.height*0.6585500,size.width*0.5953125,size.height*0.6113500);
    path0.cubicTo(size.width*0.6106250,size.height*0.5488500,size.width*0.5863250,size.height*0.2640500,size.width*0.6251625,size.height*0.2443000);
    path0.quadraticBezierTo(size.width*0.7327625,size.height*0.2758500,size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

