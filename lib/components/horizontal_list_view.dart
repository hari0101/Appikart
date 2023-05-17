import 'package:flutter/material.dart';

class horizontall_list extends StatelessWidget {
  const horizontall_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cats/t-shirt.png',
            image_caption: 'T-Shirt',
          ),
          Category(
            image_location: 'assets/images/cats/shirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'assets/images/cats/pant.png',
            image_caption: 'Pant',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final image_location;
  final image_caption;
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 90.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: new TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
