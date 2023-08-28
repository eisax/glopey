import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gloyey/view/screens/home/home_screen.dart';
import 'package:gloyey/view/screens/splash/splash_screen.dart';
import 'package:gloyey/view/screens/topup/topup_screen.dart';
import 'package:gloyey/view/widgets/bottom_navigation_bar.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String bottomBar = '/bottomBar';
  static const String topUp = '/topUp';

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getHomeRoute(String name) => '$home?name=$name';
  static getBottomBarRoute(String name) => '$bottomBar?name=$name';
  static getTopUpRoute(String name) => '$topUp?name=$name';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: home,
      page: () => const HomeScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: bottomBar,
      page: () => MyBottomNavigationBar(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: topUp,
      page: () => TopupScreen(),
      transition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 300),
    )
  ];
}
