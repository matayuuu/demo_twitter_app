import 'package:demo_0510/pages/home_page.dart';
import 'package:demo_0510/pages/rankingPage.dart';
import 'package:demo_0510/pages/search_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/tweet_add_page.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _selectedIndex = 0;
  PageController? _pageController;

  static List<Widget> _pageList = [HomePage(), SearchPage(), RankingPage()];

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
          title: const Text('OCTwitter APP'),
          actions: [
            ElevatedButton.icon(
                onPressed: () {}, icon: Icon(Icons.more_vert), label: Text(''))
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _pageList,
        ),

        ///floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TweetAddPage()),
              );
            }),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Theme.of(context).primaryColor,
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
              icon: Icon(Icons.timeline),
              label: 'Ranking',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;

            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.easeIn);
          },
        ));
  }
}
