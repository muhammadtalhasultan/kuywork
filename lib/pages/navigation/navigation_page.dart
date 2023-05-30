import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kuywork/config/constants.dart';

import '../home/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  List<Widget> get _children => const [
        HomePage(),
        HomePage(),
        HomePage(),
        HomePage(),
      ];

  onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Expanded(child: _children[currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentIndex,
        selectedItemColor: accentColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/home_icon.svg',
                color: currentIndex == 0
                    ? accentColor
                    : Theme.of(context).iconTheme.color,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Theme.of(context).brightness == Brightness.light
                  ? SvgPicture.asset(
                      'assets/svg/card_icon_light.svg',
                      color: currentIndex == 1
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    )
                  : SvgPicture.asset(
                      'assets/svg/card_icon_dark.svg',
                      color: currentIndex == 1
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    ),
              label: ""),
          BottomNavigationBarItem(
              icon: Theme.of(context).brightness == Brightness.light
                  ? SvgPicture.asset(
                      'assets/svg/details_icon_light.svg',
                      color: currentIndex == 2
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    )
                  : SvgPicture.asset(
                      'assets/svg/details_icon_dark.svg',
                      color: currentIndex == 2
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    ),
              label: ""),
          BottomNavigationBarItem(
              icon: Theme.of(context).brightness == Brightness.light
                  ? SvgPicture.asset(
                      'assets/svg/person_icon_light.svg',
                      color: currentIndex == 3
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    )
                  : SvgPicture.asset(
                      'assets/svg/person_icon_dark.svg',
                      color: currentIndex == 3
                          ? accentColor
                          : Theme.of(context).iconTheme.color,
                    ),
              label: "Profile"),
        ],
      ),
    );
  }
}
