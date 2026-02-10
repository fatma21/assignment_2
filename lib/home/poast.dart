import 'package:flutter/material.dart';

class Poast extends StatelessWidget {
  String image;
  String image2;

  Poast(this.image, this.image2);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    spacing: 10,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage("$image"),
                        ),
                      ),
                      Column(
                        spacing: 5,
                        children: [
                          Text("Route", style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                          Row(
                            spacing: 8,
                            children: [
                              Text("8h.", style: TextStyle(
                                  fontSize: 15, color: Colors.grey)),
                              Icon(Icons.public, color: Colors.grey, size: 20)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Icon(Icons.more_horiz, size: 40)
              ],
            ),
          ),
          Image.asset("$image2"),
          Row(

            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.favorite_border, size: 30,),
                        Icon(Icons.chat_bubble_outline, size: 30,),
                        Icon(Icons.share, size: 30,),
                      ],
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/images/save-instagram.png", width: 30, height: 30,),
              ),
            ],
          )
        ]
    );
  }
}