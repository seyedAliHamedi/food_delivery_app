import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../animations/fade.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey[800],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Fade(
                child: Text('Food Delivery',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Fade(
                      child: categoryItem(isActive: true, title: 'Pizza'),
                    ),
                    Fade(
                      child: categoryItem(isActive: false, title: 'Burgers'),
                    ),
                    Fade(
                      child: categoryItem(isActive: false, title: 'Kebab'),
                    ),
                    Fade(
                      child: categoryItem(isActive: false, title: 'Desert'),
                    ),
                    Fade(
                      child: categoryItem(isActive: false, title: 'Salad'),
                    ),
                  ],
                ),
              ),
              Fade(
                  child: Text(
                'Free Delivery',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800.withOpacity(0.8),
                ),
              )),
              const SizedBox(height: 15.0),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Fade(child: maskItem('one.jpg')),
                    Fade(child: maskItem('two.jpg')),
                    Fade(child: maskItem('three.jpg')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget categoryItem({isActive, title}) {
  return AspectRatio(
    aspectRatio: isActive ? 3 : 2.5 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.yellow[700] : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 20,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
        ),
      ),
    ),
  );
}

Widget maskItem(image) {
  return AspectRatio(
    aspectRatio: 1 / 1.5,
    child: Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.0),
        image: DecorationImage(
          image: AssetImage('assets/images/$image'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27.0),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            stops: const [.2, .9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.3),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "\$ 15.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Vegetarian Pizza",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
