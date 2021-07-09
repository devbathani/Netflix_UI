import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          width: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('icon/lucifer.jpg'), fit: BoxFit.cover)),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 100.0,
          child: SizedBox(
            width: 195.0,
            child: Container(
                height: 50,
                width: 10,
                child: Image.asset(
                  'icon/lucifer_text.jpg',
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      )),
                  Text(
                    'My List',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  )
                ],
              ),
              FlatButton.icon(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    size: 30,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Play',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outline,
                        size: 28,
                        color: Colors.white,
                      )),
                  Text(
                    'Info',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
