import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  const DetailsPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(
          children: <Widget>[
            Expanded(
              child:Container(
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(imagePath),

                    fit: BoxFit.fitWidth,
                  ),
                  ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}