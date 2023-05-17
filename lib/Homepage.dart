import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:appikart/components/horizontal_list_view.dart';
import 'package:appikart/components/products.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/banner_1.jpg'),
          AssetImage('assets/images/banner_2.jpg'),
          AssetImage('assets/images/banner_3.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 8.0,
        indicatorBgPadding: 5,
        dotBgColor: Colors.grey,
        dotColor: Colors.black87,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purpleAccent,
        title: const Text(
          'Appi Kart',
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: Text('Hariharane V'),
              accountEmail: Text('hariharane01@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: (const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )),
              ),
              decoration: BoxDecoration(
                color: Colors.purple[500],
              ),
            ),
            // body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Homepage'),
                leading: Icon(
                  Icons.home,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[800],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          const Padding(
            padding: EdgeInsets.all(9.0),
            child: Text(
              'Categories',
            ),
          ),
          const horizontall_list(),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Recent Project',
            ),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
