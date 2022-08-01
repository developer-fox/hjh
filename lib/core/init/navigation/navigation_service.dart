

import 'package:flutter/material.dart';

import 'INavigationService.dart';

class NavigationService implements INavigationService {
  static NavigationService? _instance = NavigationService._init();
  static NavigationService get instance {
    _instance ??= NavigationService._init();
    return _instance!;
  }

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
  @override
  Future<void> navigateToPage({String? path, Object? data}) {
    // TODO: implement navigateToPage
    throw UnimplementedError();
  }
  
  @override
  Future<void> navigateToPageClear({String? path, Object? data}) {
    // TODO: implement navigateToPageClear
    throw UnimplementedError();
  }
}