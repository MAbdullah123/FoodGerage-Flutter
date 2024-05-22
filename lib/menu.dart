import 'package:flutter/material.dart';
import 'package:my_new_application/place_order.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/4.jpg'),
            const SizedBox(
              width: 20,
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Text(
                'Fast Food',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/5.jpg',
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  'assets/6.jpg',
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  'assets/10.webp',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Burger',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'Pizza',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'Sandwich',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'RS 450',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'RS1000',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'RS600',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Text(
                'Chinese Food',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/7.jpg',
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  'assets/8.jpg',
                  width: 90,
                  height: 90,
                ),
                Image.asset(
                  'assets/9.jpg',
                  width: 120,
                  height: 120,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Pasta',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'Macroni',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'Noodles',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'RS 650',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'RS700',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  'RS600',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const place_order();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Place Order",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
