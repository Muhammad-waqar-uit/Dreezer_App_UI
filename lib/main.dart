import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isString = true;
  bool loved = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(9.h),
          child: AppBar(
            backgroundColor: Colors.white,
            shape:
                Border(bottom: BorderSide(color: Colors.black, width: 0.1.w)),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                    width: 24.w,
                    height: 24.h,
                  ),
                  const Icon(Icons.menu, color: Colors.black)
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 4.h,
                ),
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://tinyurl.com/y5rj94at'),
                  radius: 78,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Chill Hits',
                  style:
                      TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 16.0.sp,
                      ),
                      Text(
                        'Listen on Deezer',
                        style: TextStyle(fontSize: 16.sp),
                      ), // <-- Text
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  child: Text(
                    '''Only the greatest of the moment to chill out it''',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'By',
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      ),
                      SizedBox(width: 2.w),
                      Text('Fabio - Deezer Pop Editor',
                          style: TextStyle(fontSize: 14.sp)),
                      SizedBox(width: 2.w),
                      Text(
                        '60 tracks 3 h 19 min',
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Playlist Tracks',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isString = !isString;
                              });
                            },
                            icon: Icon(
                                isString ? Icons.play_arrow : Icons.pause),
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                loved = !loved;
                              });
                            },
                            icon: Icon(loved
                                ? Icons.favorite
                                : Icons.favorite_outline),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Text(
                        'Bad Habbits',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.edit))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      color: Colors.grey[300],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'see more tracks',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Similar playlists',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
               const Carousel(),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: Colors.grey[300],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'see more tracks',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),),
                ),
                SizedBox(
                  height: 2.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int number = 1;
  PageController pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var text = [
    ['alt50', '50 tracks - 17 342 fans'],
    ['TikTok Hits', '80 tracks - 130 305 fans']
  ];
  int lst = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 300,
          height: 300,
          child: PageView(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset('assets/2.jpg'),
              Image.asset('assets/1.jpg'),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 300,
            height: 70,
            color: Colors.white.withOpacity(.2),
            child: ListTile(
              title: Text(text[lst][0]),
              subtitle: Text(text[lst][1]),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 120,
          child: IconButton(
            icon: const Icon(Icons.arrow_circle_right_rounded),
            onPressed:(){
              pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
              setState(() {
                number = min(number + 1, 2);
                lst = 1;
              });
            },
          ),
        ),
        Positioned(
          left: 30,
          bottom: 120,
          child: IconButton(
            onPressed: (){
              pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
              setState(() {
                number = max(number - 1, 1);
                lst = 0;
              });
            },
            icon:const Icon(Icons.arrow_circle_left_rounded),
          ),
        ),
      ],
    );
  }
}
