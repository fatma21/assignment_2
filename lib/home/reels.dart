import 'package:flutter/material.dart';

class Reels extends StatelessWidget{
  String image1;
  String image2;
  Reels(this.image1,this.image2);
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              '$image1', // Replace with your image URL or asset
              width: 140.0,
              height: 190.0,
              fit: BoxFit.cover, // Ensures the image fills the defined bounds
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.blue,
                    width: 2
                  )
              ),

              child: CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage("$image2"),
              ),
            ),
          ),
        ]
    );
    }
}