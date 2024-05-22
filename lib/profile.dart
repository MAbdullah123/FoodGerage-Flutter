import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/12.jpeg',
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Henry',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.blueGrey,
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
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
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.black), // Border color set to black
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
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class profile_man extends StatefulWidget {
  const profile_man({super.key});

  @override
  State<profile_man> createState() => _profile_manState();
}

class _profile_manState extends State<profile_man> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
