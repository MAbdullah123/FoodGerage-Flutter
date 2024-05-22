import 'package:flutter/material.dart';

class contact_us extends StatefulWidget {
  const contact_us({super.key});

  @override
  State<contact_us> createState() => _contact_usState();
}

class _contact_usState extends State<contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey, // Setting background color to blueGrey
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color: Colors.black), // Border color set to black
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Submit',
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
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        fontFamily: 'Raileway',
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey),
      ),
      home: const contact_us(),
    );
  }
}
