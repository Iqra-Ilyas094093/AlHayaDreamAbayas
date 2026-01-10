import 'package:alhayadreamabayas/constants/colors.dart';
import 'package:alhayadreamabayas/view/screens/accountScreen/account_Screen.dart';
import 'package:alhayadreamabayas/view/screens/categoriesScreen/categories_screen.dart';
import 'package:alhayadreamabayas/view/screens/homeScreen/home_Screen.dart';
import 'package:alhayadreamabayas/view/screens/newArrivalScreen/new_arrival_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoriesScreen(),
    NewArrivalScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_grid_2x2),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.sparkles),
              label: 'New Arrivals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
