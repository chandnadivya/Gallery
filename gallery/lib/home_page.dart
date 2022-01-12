import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details_page.dart';
import 'package:gallery/main.dart';

List<Details> _images = [
  Details(imagePath: 'images/1.jpg'),
  Details(imagePath: 'images/2.jpg'),
  Details(imagePath: 'images/3.jpg'),
  Details(imagePath: 'images/4.jpg'),
  Details(imagePath: 'images/5.jpg'),
  Details(imagePath: 'images/7.jpg'),
  Details(imagePath: 'images/6.jpg'),
  Details(imagePath: 'images/11.jpg'),
  Details(imagePath: 'images/3.jpg'),
  Details(imagePath: 'images/2.jpg'),
  Details(imagePath: 'images/8.jpg'),
  Details(imagePath: 'images/9.jpg'),
  Details(imagePath: 'images/10.jpg'),
  Details(imagePath: 'images/11.jpg'),
  Details(imagePath: 'images/1.jpg'),
  Details(imagePath: 'images/6.jpg'),
  Details(imagePath: 'images/8.jpg'),
  Details(imagePath: 'images/9.jpg'),
  Details(imagePath: 'images/1.jpg'),
  Details(imagePath: 'images/2.jpg'),
  Details(imagePath: 'images/3.jpg'),
  Details(imagePath: 'images/4.jpg'),
  Details(imagePath: 'images/5.jpg'),
  Details(imagePath: 'images/6.jpg'),
  Details(imagePath: 'images/7.jpg'),
  Details(imagePath: 'images/8.jpg'),
  Details(imagePath: 'images/9.jpg'),
  Details(imagePath: 'images/10.jpg'),




];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20,width: 10,),
            Text('Gallery',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color:Colors.black,
            ),
            textAlign: TextAlign.start,),
            SizedBox(
              height: 10,
            ),
            Expanded(child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
              ),
              child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
               crossAxisSpacing: 10,
               mainAxisSpacing: 10,
              ), itemBuilder: (context,index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          imagePath: _images[index].imagePath,
                      ),
                        ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_images[index].imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },itemCount: _images.length,
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
class Details{
  final String imagePath;
  Details({required this.imagePath});
}
