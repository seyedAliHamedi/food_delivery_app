import 'package:flutter/material.dart';
import '../animations/fade.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/starter-image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Fade(
                  child: Text(
                    'Taking Order For Faster Delivery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25.0),
                const Fade(
                  child: Text(
                    'See resturans nearby by \nadding location',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20.0, height: 1.70),
                  ),
                ),
                const SizedBox(height: 100.0),
                Fade(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.orange],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/order');
                      },
                      minWidth: double.infinity,
                      child: const Text(
                        'start',
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25.0),
                const Fade(
                  child: Center(
                    child: Text(
                      'Now Deliver To Your Door 24/7',
                      style: TextStyle(color: Colors.white70, fontSize: 14.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
