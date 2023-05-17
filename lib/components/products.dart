import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 12000,
      "price": 10000,
    },
    {
      "name": "shirt",
      "picture": "assets/images/products/shirt.jpg",
      "old_price": 700,
      "price": 500,
    },
    {
      "name": "Pant",
      "picture": "assets/images/products/pant.jpg",
      "old_price": 1200,
      "price": 1000,
    },
    {
      "name": "watch",
      "picture": "assets/images/products/watch.jpg",
      "old_price": 1200,
      "price": 100,
    },
    {
      "name": "Wallets",
      "picture": "assets/images/products/wallet.jpg",
      "old_price": 1200,
      "price": 100,
    },
    {
      "name": "Sunglass",
      "picture": "assets/images/products/sunglasses.jpg",
      "old_price": 1200,
      "price": 100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;
  final prod_oldprice;

  const Single_prod(
      {this.prod_name, this.prod_picture, this.prod_oldprice, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$prod_oldprice",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
