import 'package:flutter/material.dart';
import 'Lists.dart';

class MyList extends StatelessWidget {
  List<Details> listBox = [
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Container(
          height: 175,
          width: 115,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('icon/rick.jpg'), fit: BoxFit.cover)),
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
                  image: AssetImage('icon/stranger.jpg'), fit: BoxFit.cover)),
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
                  image: AssetImage('icon/money.jpg'), fit: BoxFit.cover)),
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
                  image: AssetImage('icon/bigbang.jpg'), fit: BoxFit.cover)),
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
                  image: AssetImage('icon/games.jpg'), fit: BoxFit.cover)),
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
                  image: AssetImage('icon/dark.png'), fit: BoxFit.cover)),
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "My List",
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
                    listBox[index].dp,
                  ],
                ),
              );
            },
            itemCount: listBox.length,
          ),
        ),
      ],
    );
  }
}
