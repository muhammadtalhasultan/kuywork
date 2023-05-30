import 'package:flutter/material.dart';
import 'package:kuywork/pages/detail/detail_page.dart';
import 'package:kuywork/pages/navigation/navigation_page.dart';
import 'package:kuywork/pages/onboarding/onboarding_page.dart';
import 'package:kuywork/pages/search/search_page.dart';

class RouteGenerator {
  static const String onboardingPage = 'onboardingPage';
  static const String navigationPage = 'navigationPage';
  static const String detailPage = 'detailPage';  
   static const String searchPage = 'searchPage';  

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
       case onboardingPage:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
        case navigationPage:
        return MaterialPageRoute(builder: (_) => const NavigationPage());
         case detailPage:
        return MaterialPageRoute(builder: (_) => const DetailPage());
        case searchPage:
        return MaterialPageRoute(builder: (_) => const SearchPage());
       default:
        throw Exception('Route not found');  
    }
  }
}