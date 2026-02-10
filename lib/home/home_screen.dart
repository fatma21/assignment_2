import 'package:assignment_2/home/poast.dart';
import 'package:assignment_2/home/reels.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/Facebook-Logo-2019.png",
            width: 150,
          ),
          actions: [
            Icon(Icons.add_circle, color: Colors.black),
            SizedBox(width: 10),
            Image.asset(
              "assets/images/search-interface-symbol.png",
              width: 25,
              height: 25,
            ),
            Image.asset("assets/images/social.png", width: 45, height: 45),
          ],
          bottom: TabBar(
            labelColor: Color(0xFF1877F2),
            indicatorColor: Color(0xFF1877F2),
            tabs: [
              Tab(icon: Icon(Icons.home_filled, size: 35)),
              Tab(icon: Icon(Icons.queue_play_next, size: 35)),
              Tab(icon: Icon(Icons.storefront, size: 35)),
              Tab(icon: Icon(Icons.account_circle_outlined, size: 35)),
              Tab(
                icon: SizedBox(
                  width: 35,
                  height: 35,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  ),
                ),
              ),
            ],
          ),
        ),
        // The body of the Scaffold is the TabBarView
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            spacing: 10,
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                    "assets/images/avatar.jpg",
                                  ),
                                ),
                              ),
                              Text(
                                "What's in Your Mind?",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.image, color: Color(0xFF0DE571)),
                      ],
                    ),
                  ),
                  Divider(thickness: 2.5, color: Colors.grey),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        spacing: 10,
                        children: [
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 2.5, color: Colors.grey),
                  Poast("assets/images/model4.jpg", "assets/images/model4.jpg"),
                  Divider(thickness: 2.5, color: Colors.grey),
                  Poast("assets/images/model3.jpg", "assets/images/model1.jpg"),
                  Divider(thickness: 2.5, color: Colors.grey),
                  Poast("assets/images/image1.jpg", "assets/images/image4.jpg"),
                ],
              ),
            ),
            Center(child: Icon(Icons.directions_transit, size: 150)),
            Center(child: Icon(Icons.directions_car, size: 150)),
            Center(child: Icon(Icons.directions_car, size: 150)),
            Center(child: Icon(Icons.directions_car, size: 150)),
          ],
        ),
      ),
    );
  }
}

//return Scaffold(
//       appBar: AppBar(
//         title: Image.asset("assets/images/Facebook-Logo-2019.png", width: 150,),
//         actions:[
//           Icon(Icons.add_circle,color: Colors.black,),
//           SizedBox(width: 10,),
//           Image.asset("assets/images/search-interface-symbol.png", width:25,height: 25,),
//           Image.asset("assets/images/social.png", width:45,height: 45,)
//         ],
//
//         ),
//       body: TabBarView(
//           children:[Icon(Icons.home_filled)
//           ]),
//     );
