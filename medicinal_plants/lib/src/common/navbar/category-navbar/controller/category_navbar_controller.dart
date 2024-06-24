import 'package:flutter/material.dart';
import '../data/category_navbar_data.dart';

class TabControllerManager {
  late TabController _tabController;

  TabController createController(TickerProvider vsync) {
    _tabController = TabController(length: CategoryNavbarData.categories.length, vsync: vsync);
    return _tabController;
  }

  void dispose() {
    _tabController.dispose();
  }
}
