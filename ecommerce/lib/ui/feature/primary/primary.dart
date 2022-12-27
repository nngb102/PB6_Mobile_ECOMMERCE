import 'package:ecommerce/ui/feature/cart/cart.dart';
import 'package:ecommerce/ui/feature/home/home.dart';
import 'package:ecommerce/ui/feature/profile/profile.dart';
import 'package:flutter/material.dart';

class Primary extends StatefulWidget {
  const Primary({Key? key}) : super(key: key);

  @override
  State<Primary> createState() => _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Cart(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.amber),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
