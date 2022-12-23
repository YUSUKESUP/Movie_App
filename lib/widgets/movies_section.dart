import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../screens/movie_screen.dart';

class MoviesSection extends StatelessWidget {

  List images = [
    'Thor Love And Thunder',
    'Avatar 2',
    'Black Panther 2',
    'Black Adam',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              height: 550,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.65,
            ),
          items: [
            for (int i = 0;i < images.length; i++)
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MovieScreen(images[i])));
              },
              child: Container(
                margin: EdgeInsets.all(6),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/${images[i]}.jpg',
                      height: 300,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('PO-13',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('Action',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(children: [
                          Icon(Icons.star,color: Colors.amber),
                          SizedBox(width: 5),
                          Text('4.8',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],)
                      ],
                    ),
                    ),
                    SizedBox(height: 5),
                    Text(images[i],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)

                  ],
                ),
              ),
            )
          ]
        )
      ],
    );
  }
}
