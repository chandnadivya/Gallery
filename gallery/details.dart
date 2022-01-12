import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String imagePath;
  Details({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container,
      child:Column(
        children: <Widget>[
          Expanded(
              child:Container(
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
