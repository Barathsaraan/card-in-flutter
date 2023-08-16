import 'package:cardtask/appdrawer.dart';
import 'package:cardtask/barpage.dart';
import 'package:cardtask/firstpage.dart';
import 'package:cardtask/profile.dart';
import 'package:cardtask/video.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;
  List _screens = [firstpage(), barpage(), ProfilePage(), video()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/images/lock.png',
              fit: BoxFit.contain,
              height: 40,
            ),
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/lock.png',
              fit: BoxFit.contain,
              height: 40,
            )
          ],
        ),
      ),
      drawer: AppDrawer(),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.amber,
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'bar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'movie',
          ),
        ],
        // selectedItemColor: Colors.black,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        // backgroundColor: Color.fromARGB(255, 12, 22, 219),
      ),
    );
  }
}
