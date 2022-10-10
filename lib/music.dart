import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_sleep/Home.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);
  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}
class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffFFDBB2),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                        width: 42.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                            color: Color(0xff404756),
                            borderRadius: BorderRadius.circular(22.0)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            color: Color(0xffFFCD93),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 13.0),
                      child: Container(
                        width: 42.w,
                        height: 42.h,
                        decoration: BoxDecoration(
                          color: Color(0xff404756),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Color(0xffFFCD93),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Breathing Exercise ',
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff404756),
                    ),
                  ),
                ),
                SizedBox(
                  height: 250.h,
                ),
                Container(
                  height: 96.h,
                  width: 220.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFDBB2),
                  ),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.skip_previous,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 96.h,
                          width: 96.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: Colors.white60,
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 36.h,
                                  width: 36.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    color: Color(0xff404756),
                                  ),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.play_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Icon(Icons.play_arrow_sharp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.play_arrow_sharp),
                      ),
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderThemeData(),
                  child: Slider.adaptive(
                    thumbColor: Colors.white,
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    value: 35,
                    onChanged: (V) {},
                    min: 0,
                    max: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('01:06'),
                      Text('04:06'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
