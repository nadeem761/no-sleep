import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:no_sleep/Home.dart';

class ChooseTime extends StatefulWidget {
  const ChooseTime({Key? key}) : super(key: key);

  @override
  State<ChooseTime> createState() => _ChooseTimeState();
}

class _ChooseTimeState extends State<ChooseTime> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffE9EFFF),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65.0, right: 60.0),
                  child: Text(
                    'What time you need',
                    style: TextStyle(fontSize: 26.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, right: 100.0),
                  child: Text(
                    'to get Notified?',
                    style:
                        TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 55.0, left: 33, right: 34),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffDDE3F2),
                      border: Border.all(width: 1.0.w),
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                    height: 196.h,
                    width: 347.w,
                    child: Column(
                      children: <Widget>[
                        hourMinute(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: Text(
                    'Which day whould',
                    style: TextStyle(
                      fontSize: 26.sp,
                      color: Color(0xff5F6980),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Text(
                    'you like to Meditate?',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff404756),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 105.h,
                  width: 255.w,
                  color: Color(0xffE9EFFF),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text(
                              'M',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff404756),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text(
                              'T',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff404756),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text(
                              'W',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff404756),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text(
                              'Th',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff404756),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text('F'),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text('S'),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, top: 6),
                        child: Container(
                          height: 27.h,
                          width: 27.w,
                          child: Center(
                            child: Text('SU'),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    width: 100.w,
                    height: 40.h,
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Color(0xff404756),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text('Skip'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget hourMinute() {
    return TimePickerSpinner(
      is24HourMode: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
