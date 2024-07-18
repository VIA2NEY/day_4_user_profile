import 'package:day_4_user_profile/animattions/fade_animation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Arthur_Morgan.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ]
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              1, 
                              Text(
                                "Arthur Morgan", style: 
                                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
                              )
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                FadeAnimation(
                                  1.2, 
                                  Text("60 Videos", style: TextStyle(color: Colors.grey, fontSize: 16),)
                                ),
                                SizedBox(width: 50,),
                                FadeAnimation(
                                  1.3, 
                                  Text(
                                    "680K Subscribers", style: 
                                    TextStyle(color: Colors.grey, fontSize: 16),
                                  )
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                          1.6, 
                          Text(
                            "Arthur Morgan naît en 1863 dans le nord des États-Unis, de deux parents d'origine galloise. Lorsqu'il est enfant, sa mère, Beatrice Morgan, meurt de cause inconnu, tandis que son père est un mauvais criminel et un hors-la-loi. En 1874, alors qu'il n'a que onze ans, son père, Lyle Morgan, est arrêté pour vol", 
                            style: TextStyle(color: Colors.grey, height: 1.4),
                          )
                        ),
                        SizedBox(height: 40,),
                        FadeAnimation(
                          1.6, 
                          Text("Born", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(height: 10,),
                        FadeAnimation(
                          1.6, 
                          Text("April, 15th 1863, Détroit, États-Unis", style: TextStyle(color: Colors.grey),)
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(
                          1.6, 
                          Text("Nationality", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          Text("Americain", style: TextStyle(color: Colors.grey),)
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          Text("Videos", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(
                          1.8, 
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                makeVideo(image: 'assets/Athur_1.jpg'),
                                makeVideo(image: 'assets/Athur_2.jpg'),
                                makeVideo(image: 'assets/Athur_3.jpg'),
                              ],
                            ),
                          )
                        ),
                        SizedBox(height: 120,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[700]
                    ),
                    child: Align(child: Text("Follow", style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5/ 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3)
              ]
            )
          ),
          child: Align(
            child: Icon(Icons.play_arrow, color: Colors.white, size: 70,),
          ),
        ),
      ),
    );
  }
}