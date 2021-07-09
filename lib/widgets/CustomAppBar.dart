import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key? key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  child: SafeArea(
                      child: Container(
                          height: 35,
                          width: 35,
                          child: Image.asset('icon/netflixIcon1.png')))),
              SizedBox(
                width: 200,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(
                      Icons.cast,
                      color: Colors.white,
                    ),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  child: SafeArea(
                      child: Container(
                          height: 27,
                          width: 27,
                          child: Image.asset('icon/profile_1.png')))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "TV Shows",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                width: 45,
              ),
              Text(
                "Movies",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                width: 45,
              ),
              Text(
                "My List",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
