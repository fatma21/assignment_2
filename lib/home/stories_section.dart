

import 'package:assignment_2/home/reels.dart';
import 'package:flutter/material.dart';

class StoriesSection extends StatelessWidget{
  List<dynamic>storieslist=[
    Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/avatar.jpg', // Replace with your image URL or asset
            width: 140.0,
            height: 190.0,
            fit: BoxFit
                .fill, // Ensures the image fills the defined bounds
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Text(
            "Create a \nStory",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(55.0),
          child: SizedBox(
            width: 30,
            height: 30,
            child: FloatingActionButton(
              onPressed: () {},
              shape: CircleBorder(),
              backgroundColor: Color(0xFF1877F2),
              mini: true,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    ),
        Reels(
          "assets/images/image1.jpg",
          "assets/images/image4.jpg",
        ),
        Reels(
          "assets/images/model1.jpg",
          "assets/images/model3.jpg",
        ),
        Reels(
          "assets/images/model4.jpg",
          "assets/images/model4.jpg",
        ),];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

//Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Row(
//                         spacing: 10,
//                         children: [
//                           Stack(
//                             alignment: Alignment.bottomCenter,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 child: Image.asset(
//                                   'assets/images/avatar.jpg', // Replace with your image URL or asset
//                                   width: 140.0,
//                                   height: 190.0,
//                                   fit: BoxFit
//                                       .fill, // Ensures the image fills the defined bounds
//                                 ),
//                               ),
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 35,
//                                   vertical: 8,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(20),
//                                     bottomRight: Radius.circular(20),
//                                   ),
//                                   color: Colors.white,
//                                 ),
//                                 child: Text(
//                                   "Create a \nStory",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(55.0),
//                                 child: SizedBox(
//                                   width: 30,
//                                   height: 30,
//                                   child: FloatingActionButton(
//                                     onPressed: () {},
//                                     shape: CircleBorder(),
//                                     backgroundColor: Color(0xFF1877F2),
//                                     mini: true,
//                                     child: Icon(
//                                       Icons.add,
//                                       color: Colors.white,
//                                       size: 20,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Reels(
//                             "assets/images/image1.jpg",
//                             "assets/images/image4.jpg",
//                           ),
//                           Reels(
//                             "assets/images/model1.jpg",
//                             "assets/images/model3.jpg",
//                           ),
//                           Reels(
//                             "assets/images/model4.jpg",
//                             "assets/images/model4.jpg",
//                           ),
//                         ],
//                       ),
//                     )