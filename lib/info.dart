import 'package:flutter/material.dart';

import 'package:vbank/screens/bottomnav/analytics.dart';
import 'package:vbank/screens/bottomnav/cards.dart';
import 'package:vbank/screens/bottomnav/feed.dart';
import 'package:vbank/screens/bottomnav/payments.dart';
import 'package:vbank/screens/contact.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;
  List<Widget> bottomnav = [
    const Feed(),
    const Analytics(),
    const Payments(),
    const Contact(),
    const Cards()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bottomnav[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 198, 36, 227),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payments'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_emergency), label: 'Contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_sharp), label: 'Cards'),
        ],
      ),
    );
  }
}
