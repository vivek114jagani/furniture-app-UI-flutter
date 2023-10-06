import 'package:flutter/material.dart';

class CatalougeTabBar extends StatefulWidget {
  const CatalougeTabBar({
    super.key,
  });

  @override
  State<CatalougeTabBar> createState() => _CatalougeTabBarState();
}

class _CatalougeTabBarState extends State<CatalougeTabBar>
    with TickerProviderStateMixin {
  late TabController tabbar;

  @override
  void initState() {
    tabbar = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabbar.length,
      child: Container(
        height: 55,
        alignment: Alignment.center,
        child: const TabBar(
          tabs: [
            Text(
              "Sofa",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Bed",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Cabinet",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Stool",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Table",
              style: TextStyle(fontSize: 18),
            ),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black45,
          indicatorColor: Colors.cyan,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
        ),
      ),
    );
  }
}
