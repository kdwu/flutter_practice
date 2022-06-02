import 'package:flutter/material.dart';
import 'package:flutter_pratice/pages/home_page.dart';
import 'package:flutter_pratice/pages/profile_page.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator({Key? key}) : super(key: key);

  @override
  State<TabNavigator> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  int _currentIndex = 0;
  int _currentPage = 0;



  @override
  Widget build(BuildContext context) {

    // 监听 pageView 的滑动，也要同步去改变底部的 item
    _controller.addListener(() {
      double? page = _controller.page;
      if (page != null) {
        if (page >= 0 && page < 0.5) {
          _currentPage = 0;
        } else if (page >= 0.5 && page < 1.5) {
          _currentPage = 1;
        } else if (page >= 1.5 && page < 2.5) {
          _currentPage = 2;
        } else if (page >= 2.5 && page <= 3) {
          _currentPage = 3;
        }

        setState(() {
          _currentIndex = _currentPage;
        });
      }
    });

    return Scaffold(
      body: PageView(
        controller: _controller,
        //physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFFFDA13),
        unselectedItemColor: const Color(0xFFAAAFBB),
        selectedLabelStyle:
            const TextStyle(fontSize: 11, color: Color(0xFFFFDA13)),
        unselectedLabelStyle:
            const TextStyle(fontSize: 11, color: Color(0xFFAAAFBB)),
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 0
                  ? "res_images/home_tab_selected.png"
                  : "res_images/home_tab_unselected.png",
              width: 27,
              height: 27,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _currentIndex == 1
                  ? "res_images/profile_tab_selected.png"
                  : "res_images/profile_tab_unselected.png",
              width: 27,
              height: 27,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

}
