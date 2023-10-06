import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({
    super.key,
  });

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabController.length,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(25),
          ),
          child: TabBar(
            indicator: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(25),
            ),
            unselectedLabelColor: Colors.black38,
            tabs: const [
              Text(
                "Footprint",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Collation",
                style: TextStyle(fontSize: 20),
              ),
            ],
            indicatorColor: Colors.cyan,
            labelColor: Colors.white,
          ),
        ),
      ),
    );

    // Expanded(
    //   child: TabBarView(
    //     controller: tabController,
    //     physics: const BouncingScrollPhysics(),
    //     children: const [
    //       Center(child: Text("Hello 1")),
    //       Center(child: Text("Hello 2")),
    //     ],
    //   ),
    // )
  }
}
