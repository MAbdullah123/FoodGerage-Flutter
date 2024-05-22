import 'package:flutter/material.dart';

class place_order extends StatefulWidget {
  const place_order({Key? key}) : super(key: key);

  @override
  State<place_order> createState() => _place_orderState();
}

class _place_orderState extends State<place_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Order'),
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
                  labelText: 'Phone Number',
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
                  labelText: 'Order Items',
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

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        fontFamily: 'Raileway',
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueGrey),
      ),
      home: const place_order(),
    );
  }
}
