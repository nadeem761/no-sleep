import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:no_sleep/music.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff56669D),
          body: Column(
            children: [
              SizedBox(
                height: 61.h,
              ),
              Center(
                child: Text(
                  'NoSleep',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffE9EFFF),
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Center(
                child: Image.asset(
                  'assets/img_2.png',
                  width: 58.w,
                  height: 54.h,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 255),
                child: Text(
                  'Recent',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0, right: 110),
                child: Text(
                  'Complete the coueses you started',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/img_14.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, top: 20),
                    child: Text(
                      'Timed meditation',
                      style: TextStyle(
                          color: Color(0xff010E38),
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 44.0, left: 50),
                    child: Text('Self-practice in silence'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250.0, left: 40),
                    child: Text(
                      'Recommended for you',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) => Container(
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/img_15.png',
                              width: 180.w,
                              height: 130.h,
                            ),
                            Image.asset(
                              'assets/img_16.png',
                              width: 180.w,
                              height: 130.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Evening Meditation',
                      style: TextStyle(
                        color: Color(0xffE9EFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Text(
                      'Evening Meditation',
                      style: TextStyle(
                        color: Color(0xffE9EFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Container(
                  height: 70.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Color(0xff56669D),
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Color(0xff56669D),
                    currentIndex: _currentIndex,
                    type: BottomNavigationBarType.fixed,
                    iconSize: 30,
                    selectedFontSize: 15,
                    items: [
                      BottomNavigationBarItem(
                        backgroundColor: Color(0xffFA9490),
                        icon: Icon(
                          Icons.home,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.blue,
                        icon: Icon(
                          Icons.sunny,
                          color: Colors.white,
                        ),
                        label: 'Sleep',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.blue,
                        icon: Icon(
                          Icons.library_books_sharp,
                          color: Colors.white,
                        ),
                        label: 'Library',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.blue,
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MusicPlayer()),
                            );
                          },
                          child: Icon(
                            Icons.music_note_sharp,
                            color: Colors.white,
                          ),
                        ),
                        label: 'music',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: Colors.blue,
                        icon: Icon(
                          Icons.manage_accounts,
                          color: Colors.white,
                        ),
                        label: 'Profile',
                      ),
                    ],
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
