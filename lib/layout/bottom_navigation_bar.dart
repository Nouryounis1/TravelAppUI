import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  var bottomNavStyle =
      GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.4,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5))
      ]),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? SvgPicture.asset('assets/svg/icon_home_colored.svg')
                  : SvgPicture.asset('assets/svg/icon_home.svg'),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? SvgPicture.asset('assets/svg/icon_heart_colored.svg')
                  : SvgPicture.asset('assets/svg/icon_heart.svg'),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? SvgPicture.asset('assets/svg/icon_plus_colored.svg')
                  : SvgPicture.asset('assets/svg/icon_plus.svg'),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: currentIndex == 3
                  ? SvgPicture.asset('assets/svg/icon_notification_colored.svg')
                  : SvgPicture.asset('assets/svg/icon_notification.svg'),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: currentIndex == 4
                  ? SvgPicture.asset('assets/svg/icon_user_colored.svg')
                  : SvgPicture.asset('assets/svg/icon_user.svg'),
              title: Text('Home')),
        ],
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
