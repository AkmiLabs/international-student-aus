import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class TabManager extends StatefulWidget {
  const TabManager({Key? key}) : super(key: key);

  @override
  State<TabManager> createState() => _TabManagerState();
}

class _TabManagerState extends State<TabManager> {
  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);
    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        iconSize: 30,
        activeColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.bolt_circle),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(CupertinoIcons.news),
          ),
          BottomNavigationBarItem(
              label: 'Deals', icon: Icon(CupertinoIcons.money_dollar_circle)),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(CupertinoIcons.settings),
          ),
        ],
      ),
    );
  }
}
