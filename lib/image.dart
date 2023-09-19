import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String name,image,subtitle;
  ImagePage({required this.name, required this.image, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),
      backgroundColor: Colors.brown,),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {},
        child: Icon(Icons.favorite_border,color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
