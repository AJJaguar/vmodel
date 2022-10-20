import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'homepage/homepage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: const MyHomePage(),
        );
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0XffFFFFFF),
//       body: Column(
//         children: [
//           SizedBox(height: 60.h),
//           topRow(),
//           Divider(color: const Color(0XFFEEEEEE), height: 30.h, thickness: 2.h),
//           topProfile(),
//           SizedBox(height: 8.h),
//           slideCarousel(),
//           SizedBox(height: 10.h),
//           bottomRow(),
//           SizedBox(height: 30.h),
//           bottomProfile(),
//           SizedBox(height: 6.h),
//           Divider(color: const Color(0XFFEEEEEE), height: 0.h, thickness: 2.h),
//           navBar()
//         ],
//       ),
//     );
//   }

//   topRow() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20).r,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               boxSized(31.h, 21.w, 'images/appbar1.svg'),
//               SizedBox(width: 16.w),
//               boxSized(25.h, 13.w, 'images/appbar2.svg'),
//             ],
//           ),
//           text('Feed'),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 4).r,
//             child: Row(
//               children: [
//                 boxSized(21.h, 12.6.w, 'images/appbar3.svg'),
//                 SizedBox(width: 21.w),
//                 boxSized(22.69.h, 18.95.w, 'images/appbar4.svg'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   topProfile() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12).r,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 13.r,
//                 backgroundImage: const AssetImage('images/circle_avatar1.png'),
//               ),
//               SizedBox(width: 6.w),
//               Padding(
//                 padding: const EdgeInsets.only(top: 2).r,
//                 child: text(
//                   'Samantha',
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],
//           ),
//           boxSized(20.h, 4.w, 'images/Group.svg'),
//         ],
//       ),
//     );
//   }

//   navBar() {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 26,
//         ).r,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Container(),
//                 SizedBox(height: 10.h),
//                 boxSized(25.h, 25.w, 'images/navbar1.svg'),
//                 SizedBox(height: 4.h),
//                 redDot(),
//               ],
//             ),
//             boxSized(26.h, 26.w, 'images/navbar2.svg'),
//             boxSized(40.h, 40.w, 'images/navbar3.svg'),
//             boxSized(26.h, 26.w, 'images/navbar4.svg'),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 10.h),
//                 CircleAvatar(
//                   radius: 13.r,
//                   backgroundImage:
//                       const AssetImage('images/circle_avatar1.png'),
//                 ),
//                 SizedBox(height: 4.h),
//                 redDot(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   bottomProfile() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12).r,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 13.r,
//                 backgroundImage: const AssetImage('images/profile2.png'),
//               ),
//               SizedBox(width: 6.w),
//               Padding(
//                 padding: const EdgeInsets.only(top: 2).r,
//                 child: text('Samantha', fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//           boxSized(20.h, 4.w, 'images/Group.svg'),
//         ],
//       ),
//     );
//   }

//   bottomRow() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 21).r,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 21.h,
//                     width: 21.w,
//                     child: SvgPicture.asset('images/bottombar1.svg'),
//                   ),
//                   SizedBox(height: 5.h),
//                   text(
//                     '300',
//                     color: const Color(0XFF543B3B),
//                     fontsize: 12,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   SizedBox(width: 14.w),
//                   boxSized(21.h, 12.w, 'images/bottombar2.svg'),
//                 ],
//               ),
//               AnimatedSmoothIndicator(
//                 activeIndex: activeIndex,
//                 count: images.length,
//                 effect: SlideEffect(
//                   radius: 6.r,
//                   dotHeight: 8.r,
//                   dotWidth: 8.r,
//                   activeDotColor: const Color(0XFF503C3B),
//                   dotColor: const Color(0XFF503C3B).withOpacity(0.2),
//                 ),
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   boxSized(19.h, 21.w, 'images/bottombar3.svg'),
//                   SizedBox(width: 10.w),
//                   Column(
//                     children: [
//                       boxSized(20.h, 23.5.w, 'images/bottombar4.svg'),
//                       SizedBox(height: 7.h),
//                       text(
//                         '50.4k',
//                         color: const Color(0XFF543B3B),
//                         fontsize: 12,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   CarouselSlider slideCarousel() {
//     return CarouselSlider(
//       items: images.map((image) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(image),
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             );
//           },
//         );
//       }).toList(),
//       options: CarouselOptions(
//         onPageChanged: (index, reason) {
//           setState(() {
//             activeIndex = index;
//           });
//         },
//         height: 470.h,
//         viewportFraction: 1,
//       ),
//     );
//   }

//   text(
//     String title, {
//     Color color = const Color(0XFF503C3B),
//     int fontsize = 14,
//     FontWeight fontWeight = FontWeight.w600,
//   }) =>
//       Text(
//         'Feed',
//         style: TextStyle(
//             color: color,
//             fontFamily: 'AvenirNextLTPro',
//             fontSize: fontsize.sp,
//             fontWeight: fontWeight),
//       );

//   redDot() => Container(
//         height: 10,
//         width: 10,
//         decoration: const BoxDecoration(
//           color: Color(0XFFFD4A40),
//           shape: BoxShape.circle,
//         ),
//       );

//   boxSized(double dh, double dw, String image) => SizedBox(
//         height: dh,
//         width: dw,
//         child: SvgPicture.asset(image),
//       );

//   List<String> images = [
//     'images/center_image.png',
//     'images/center_image.png',
//     'images/center_image.png',
//     'images/center_image.png',
//     'images/center_image.png',
//   ];
//   int activeIndex = 0;
// }
