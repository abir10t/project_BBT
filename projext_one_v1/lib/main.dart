import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuildApp(),
    );
  }
}

class BuildApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  color: Colors.pinkAccent,
                  height: size.height * 0.2,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Welcome Abir",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 2)),
                              child: Center(
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cart',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text('\$ 00.00 ')
                              ],
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,


                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 2)),
                              child: Center(
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Appointments',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text('9+')
                              ],
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomWidget(
                        Icons.perm_identity_outlined,
                        'Doctor Consultation',
                        'Find a Doctor get appointed for health care',
                        'professional for your condition'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomWidget(
                        Icons.accessible,
                        'Market Place',
                        'Browse through our wide range of health',
                        'product and services'),
                    SizedBox(
                      height: 10,
                    ),
                    CustomWidget(
                        Icons.phone,
                        'Lab Test',
                        'Browse through our wide range of health',
                        'for cheackup your health condition'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:Colors.pinkAccent),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color:Colors.pinkAccent),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color:Colors.pinkAccent),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible, color:Colors.pinkAccent),
            label: 'School',
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget(this.icon, this.header, this.text1, this.text2);
  final icon;
  final header;
  final text1;
  final text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 10),
      margin: EdgeInsets.symmetric( horizontal: 8),

      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 50,
            color: Colors.pinkAccent,
          ),
          Text(header,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent)),
          SizedBox(
            height: 10,
          ),
          Text(text1),
          Text(text2),
        ],
      ),
    );
  }
}
