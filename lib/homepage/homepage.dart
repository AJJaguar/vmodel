import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffFFFFFF),
      body: Column(
        children: [
          SizedBox(height: 60.h),
          topRow(),
          Divider(color: const Color(0XFFEEEEEE), height: 30.h, thickness: 2.h),
          topProfile(),
          SizedBox(height: 8.h),
          slideCarousel(),
          SizedBox(height: 10.h),
          bottomRow(),
          SizedBox(height: 30.h),
          bottomProfile(),
          SizedBox(height: 6.h),
          Divider(color: const Color(0XFFEEEEEE), height: 0.h, thickness: 2.h),
          navBar()
        ],
      ),
    );
  }

  slideCarousel() {
    return CarouselSlider(
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            activeIndex = index;
          });
        },
        height: 470.h,
        viewportFraction: 1,
      ),
    );
  }
}
