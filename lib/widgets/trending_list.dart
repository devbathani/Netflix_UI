import 'package:flutter/material.dart';
import 'Lists.dart';

class TrendingList extends StatelessWidget {
  List<Details> trendlist = [
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/suits.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/selection.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/naruto.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/friends.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/intern.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/startup.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Trending Now",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    trendlist[index].dp,
                  ],
                ),
              );
            },
            itemCount: trendlist.length,
          ),
        ),
      ],
    );
  }
}
