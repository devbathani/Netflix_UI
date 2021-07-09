import 'package:flutter/material.dart';  
import 'package:netflix_ui/widgets/CustomAppBar.dart';
import 'package:netflix_ui/widgets/MyList.dart';
import 'package:netflix_ui/widgets/content_header.dart';
import 'package:netflix_ui/widgets/trending_list.dart';
import 'package:netflix_ui/widgets/watchinglist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double ScreenHeight = MediaQuery.of(context).size.height;
    final double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            SizedBox(
              width: 110,
            ),
            Container(
              height: ScreenHeight * 0.50,
              width: ScreenWidth * 0.40,
              child: Image.asset('icon/netflixlogo.png'),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              height: ScreenHeight * 0.05,
              width: ScreenWidth * 0.05,
              child: Image.asset('icon/pencil.png'),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 75),
            child: Center(
              child: Text(
                "Who's Watching?",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: ScreenWidth * 0.30,
                            width: ScreenWidth * 0.30,
                            child: SafeArea(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileHomePage()),
                                      );
                                    },
                                    child: Image.asset('icon/profile_1.png'))),
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          "Dev",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: ScreenWidth * 0.30,
                            width: ScreenWidth * 0.30,
                            child: SafeArea(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileHomePage()),
                                      );
                                    },
                                    child: Image.asset('icon/profile_3.png'))),
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          "Jaysheel",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: ScreenWidth * 0.30,
                            width: ScreenWidth * 0.30,
                            child: SafeArea(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileHomePage()),
                                      );
                                    },
                                    child: Image.asset('icon/profile_4.png'))),
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          "Hem",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: ScreenWidth * 0.30,
                            width: ScreenWidth * 0.30,
                            child: SafeArea(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileHomePage()),
                                      );
                                    },
                                    child: Image.asset('icon/profile_2.png'))),
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          "Pavan",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHomePage extends StatefulWidget {
  @override
  _ProfileHomePageState createState() => _ProfileHomePageState();
}

class _ProfileHomePageState extends State<ProfileHomePage> {
  ScrollController _scrollController = new ScrollController();

  double _scrollOffset = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 95.0),
        child: CustomAppBar(
          scrollOffset: _scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                ContentHeader(),
                SizedBox(
                  height: 18,
                ),
                MyList(),
                SizedBox(
                  height: 18,
                ),
                WatchingList(),
                SizedBox(
                  height: 18,
                ),
                TrendingList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
