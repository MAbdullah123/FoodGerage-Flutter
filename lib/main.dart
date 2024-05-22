import 'package:flutter/material.dart';
import 'package:my_new_application/contact_us.dart';
import 'package:my_new_application/home_page.dart';
import 'package:my_new_application/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blueGrey,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey),
      ),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey),
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  bool isDarkMode = false;

  final List<Widget> pages = [
    home_page(),
    profile(),
    contact_us(),
  ];

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FoodGerage'),
          actions: [
            IconButton(
              onPressed: () {
                toggleDarkMode();
                debugPrint('Dark mode toggled');
              },
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),
        body: pages[currentPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Floating Action Button');
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined),
              label: 'ContactUs',
            ),
          ],
        ),
      ),
    );
  }
}
