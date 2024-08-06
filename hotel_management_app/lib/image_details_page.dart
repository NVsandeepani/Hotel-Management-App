import 'package:flutter/material.dart';

class ImageDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String price;
  final int rating;

  const ImageDetailsPage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Image.network(imageUrl),
          SizedBox(height: 20.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          ),
          Text(
            location,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              rating,
              (index) => Icon(
                Icons.star,
                color: Colors.yellow,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
