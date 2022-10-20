import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

topRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20).r,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            boxSized(31.h, 21.w, 'images/appbar1.svg'),
            SizedBox(width: 16.w),
            boxSized(25.h, 13.w, 'images/appbar2.svg'),
          ],
        ),
        text('Feed'),
        Padding(
          padding: const EdgeInsets.only(bottom: 4).r,
          child: Row(
            children: [
              boxSized(21.h, 12.6.w, 'images/appbar3.svg'),
              SizedBox(width: 21.w),
              boxSized(22.69.h, 18.95.w, 'images/appbar4.svg'),
            ],
          ),
        ),
      ],
    ),
  );
}

topProfile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12).r,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 13.r,
              backgroundImage: const AssetImage('images/circle_avatar1.png'),
            ),
            SizedBox(width: 6.w),
            Padding(
              padding: const EdgeInsets.only(top: 2).r,
              child: text(
                'Samantha',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        boxSized(20.h, 4.w, 'images/Group.svg'),
      ],
    ),
  );
}

navBar() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
      ).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(),
              SizedBox(height: 10.h),
              boxSized(25.h, 25.w, 'images/navbar1.svg'),
              SizedBox(height: 4.h),
              redDot(),
            ],
          ),
          boxSized(26.h, 26.w, 'images/navbar2.svg'),
          boxSized(40.h, 40.w, 'images/navbar3.svg'),
          boxSized(26.h, 26.w, 'images/navbar4.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              CircleAvatar(
                radius: 13.r,
                backgroundImage: const AssetImage('images/circle_avatar1.png'),
              ),
              SizedBox(height: 4.h),
              redDot(),
            ],
          ),
        ],
      ),
    ),
  );
}

bottomProfile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12).r,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 13.r,
              backgroundImage: const AssetImage('images/profile2.png'),
            ),
            SizedBox(width: 6.w),
            Padding(
              padding: const EdgeInsets.only(top: 2).r,
              child: text('Samantha', fontWeight: FontWeight.w500),
            ),
          ],
        ),
        boxSized(20.h, 4.w, 'images/Group.svg'),
      ],
    ),
  );
}

bottomRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 21).r,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                boxSized(21.h, 21.w, 'images/bottombar1.svg'),
                SizedBox(height: 5.h),
                text(
                  '300',
                  color: const Color(0XFF543B3B),
                  fontsize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(width: 14.w),
            boxSized(21.h, 12.w, 'images/bottombar2.svg'),
          ],
        ),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,
          effect: SlideEffect(
            radius: 6.r,
            dotHeight: 8.r,
            dotWidth: 8.r,
            activeDotColor: const Color(0XFF503C3B),
            dotColor: const Color(0XFF503C3B).withOpacity(0.2),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boxSized(19.h, 21.w, 'images/bottombar3.svg'),
            SizedBox(width: 10.w),
            Column(
              children: [
                boxSized(20.h, 23.5.w, 'images/bottombar4.svg'),
                SizedBox(height: 7.h),
                text(
                  '50.4k',
                  color: const Color(0XFF543B3B),
                  fontsize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

text(
  String title, {
  Color color = const Color(0XFF503C3B),
  int fontsize = 14,
  FontWeight fontWeight = FontWeight.w600,
}) =>
    Text(
      title,
      style: TextStyle(
          color: color,
          fontFamily: 'AvenirNextLTPro',
          fontSize: fontsize.sp,
          fontWeight: fontWeight),
    );

redDot() => Container(
      height: 10,
      width: 10,
      decoration: const BoxDecoration(
        color: Color(0XFFFD4A40),
        shape: BoxShape.circle,
      ),
    );

boxSized(
  double dh,
  double dw,
  String image,
) =>
    SizedBox(
      height: dh,
      width: dw,
      child: SvgPicture.asset(image),
    );

List<String> images = [
  'images/center_image.png',
  'images/center_image.png',
  'images/center_image.png',
  'images/center_image.png',
  'images/center_image.png',
];
int activeIndex = 0;
