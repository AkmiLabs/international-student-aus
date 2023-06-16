import 'package:flutter/material.dart';
import 'package:international_student_app/screens/deals_screen.dart';
import 'package:international_student_app/screens/fav_news_screen.dart';
import 'package:international_student_app/screens/home_screen.dart';
import 'package:international_student_app/screens/news_screen.dart';
import 'package:international_student_app/screens/settings_screen.dart';
import 'package:international_student_app/screens/tab_manager.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:routemaster/routemaster.dart';

class Routes {
  static final routes = RouteMap(routes: {
    //
    // Home tab settings
    //
    '/': (_) => const CupertinoTabPage(
          child: TabManager(),
          paths: ['/home', '/news', '/deals', '/settings'],
        ),
    '/home': (_) => const MaterialPage(child: HomeScreen()),
    '/news': (_) => const MaterialPage(child: NewsScreen()),
    '/deals': (_) => const MaterialPage(child: DealsScreen()),
    '/settings': (_) => const MaterialPage(child: SettingsScreen()),

    //
    //
    //
    '/fav_news': (_) => const MaterialPage(child: FavNewsScreen()),
  });
}
