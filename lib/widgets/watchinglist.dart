import 'package:flutter/material.dart';
import 'Lists.dart';

class WatchingList extends StatelessWidget {
  List<Details> WatchList = [
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/luci.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/lupin.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/naru.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/bro.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/phir.jpg'), fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Details(
      dp: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 175,
              width: 115,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage('icon/saitama.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 50.0,
              right: 35,
              child: SizedBox(
                height: 50,
                width: 50.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ],
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
            "Continue Watching for Dev",
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
                    WatchList[index].dp,
                  ],
                ),
              );
            },
            itemCount: WatchList.length,
          ),
        ),
      ],
    );
  }
}
