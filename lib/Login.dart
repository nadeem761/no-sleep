import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_sleep/GetStarted.dart';
import 'package:no_sleep/GetStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9EFFF),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/Vector 1.png'),
                Positioned(
                  top: 13,
                  left: 151,
                  child: Text(
                    'NoSleep',
                    style: TextStyle(
                        color: Color(0xffE9EFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp),
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 165,
                  child: Image.asset(
                    'assets/img_2.png',
                    width: 58.w,
                    height: 54.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.39.h,
              width: 206.w,
            ),
            Text(
              "Want to Join Us?",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
            Image.asset(
              'assets/img.png',
              height: 263.h,
              width: 191.w,
            ),
            SizedBox(
              height: 22.h,
              width: 330.w,
            ),
            Text(
              '2165 person meditating right now!',
              style: TextStyle(
                color: Color(0xff404756),
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(
              height: 49.h,
              width: 198.w,
            ),
            Row(
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
                      MaterialPageRoute(builder: (context) => GetStartedPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img_1.png',
                        height: 25.h,
                        width: 25.w,
                      ),
                      Text(
                        'Join with google',
                        style: TextStyle(
                          color: Color(0xff404756),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 107.w,
              height: 17.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: null,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img_4.png',
                        height: 17.h,
                        width: 17.w,
                      ),
                      Text(
                        'Join with Email',
                        style: TextStyle(
                          color: Color(0xff404756),
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
    );
  }
}
