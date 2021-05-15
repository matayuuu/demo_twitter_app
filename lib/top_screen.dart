import 'package:demo_0510/pages/home_page.dart';
import 'package:demo_0510/pages/search_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/task_add_page.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _selectedIndex = 0;
  PageController? _pageController;

  static List<Widget> _pageList = [HomePage(), SearchPage(), TaskAddPage()];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task管理アプリ'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'TaskAdd',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;

          _pageController!.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        },
      ),
    );
  }
}
