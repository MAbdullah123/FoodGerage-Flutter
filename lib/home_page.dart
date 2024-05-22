// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_new_application/menu.dart';
import 'package:my_new_application/home_page.dart';
import 'package:my_new_application/profile.dart';
import 'package:my_new_application/place_order.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/3.jpeg',
              width: 500, // Set the width as per your requirement
              height: 550, // Set the height as per your requirement
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Menu();
                    },
                  ),
                );
              },
              child: const Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
