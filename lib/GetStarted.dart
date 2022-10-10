import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_sleep/Login.dart';
import 'package:no_sleep/chosse.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color(0xff56669D),
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      'NoSleep',
                      style: TextStyle(
                          color: Color(0xffE9EFFF),
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp),
                    ),
                  ),
                  Image.asset(
                    'assets/img_2.png',
                    width: 58.w,
                    height: 54.h,
                  ),
                  SizedBox(
                    width: 225.w,
                    height: 30.h,
                  ),
                  Text(
                    'Hi, Welcome',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFCD93),
                    ),
                  ),
                  Text(
                    'To NoSleep',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFCD93),
                    ),
                  ),
                  SizedBox(
                    width: 198.w,
                    height: 17.h,
                  ),
                  Center(
                    child: Text(
                      'Get started with app where you ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'can find some peace',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: Image.asset(
                          'assets/img_3.png',
                          height: 454.h,
                          width: 454.w,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Image.asset(
                          'assets/img_6.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 120),
                        child: Image.asset(
                          'assets/img_5.png',
                          width: 188.w,
                          height: 266.h,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 350.0, left: 120),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                    width: 5.0.w,
                                    color: Color(0xff404756),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Choose()),
                                );
                              },
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        //color: Color(0xff404756),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 15.sp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
