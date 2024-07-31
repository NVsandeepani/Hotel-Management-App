import 'package:flutter/material.dart';


Widget hotelgallery(String imageUrl, String title, String location, int rating) {
  return Container(
    width: 200.0,
    margin: EdgeInsets.only(right: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 10.0,
          left: 10.0,
          right: 10.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                location,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                children: List.generate(
                  rating,
                  (index) => Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}