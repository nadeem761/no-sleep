import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_sleep/Choose_time.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffF2C4C2),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 21.0),
                  child: Text(
                    'What you need',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26.sp,
                      color: Color(0xff56669D),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, left: 24.0),
                  child: Text(
                    'to improve?',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26.sp,
                      color: Color(0xffE9EFFF),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 21.0),
                  child: Text(
                    'Choose things that you need to improve',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: Color(0xff727E99),
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 61.0, left: 18),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChooseTime()),
                              );
                            },
                            child: Image.asset(
                              'assets/img_8.png',
                              width: 155.w,
                              height: 255.h,
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 360.0, left: 18),
                              child: Image.asset(
                                'assets/img_10.png',
                                width: 155.w,
                                height: 155.h,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 540.0, left: 18),
                              child: Image.asset(
                                'assets/img_11.png',
                                width: 155.w,
                                height: 255.h,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 61.0, left: 18),
                          child: Image.asset(
                            'assets/img_9.png',
                            width: 155.w,
                            height: 155.h,
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 250.0, left: 18),
                              child: Image.asset(
                                'assets/img_12.png',
                                width: 155.w,
                                height: 259.h,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 555.0, left: 18),
                              child: Image.asset(
                                'assets/img_13.png',
                                width: 155.w,
                                height: 155.h,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
