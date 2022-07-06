import 'package:attendance_with_bio/ui/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PageViews extends StatefulWidget {
  const PageViews({Key? key}) : super(key: key);
  static String routeName = "/page-view";

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  final List<Widget> _pages = <Widget>[
    const Dashboard(),
    const Dashboard(),
    const Dashboard(),
  ];
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    _selectedIndex = index;
  }

  void _itemTapped(int _selectedIndex) {
    setState(
      () {
        _pageController.jumpToPage(_selectedIndex);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 3,
            selectedLabelStyle: TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0.sp,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            unselectedLabelStyle: TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0.sp,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            onTap: _itemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: SvgPicture.asset(
                      'assets/home.svg',
                      width: 25,
                      height: 25,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    )),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: SvgPicture.asset('assets/study.svg',
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/Profile.png',
                        color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Settings',
              ),
               BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/Profile.png',
                        color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed),
      ),
    );
  }
}
