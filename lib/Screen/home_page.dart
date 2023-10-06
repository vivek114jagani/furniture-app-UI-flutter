import 'package:flutter/material.dart';
import 'package:gride_app/Widgets/home_top_designe.dart';
import '../AppBar/home_appbar.dart';
import '../Widgets/home_tabbar.dart';

class HomePageGride extends StatefulWidget {
  const HomePageGride({super.key});

  @override
  State<HomePageGride> createState() => _HomePageGrideState();
}

class _HomePageGrideState extends State<HomePageGride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          const TopDesign(),
          const MyTabBar(),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFE0E0E0),
                        offset: Offset(0, 3),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(9),
                              topRight: Radius.circular(9),
                            ),
                            color: Color(0xffe5e6ea),
                          ),
                          child: Image.asset("assets/sofa.com.png"),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wame Sofa",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "Free mind and body",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
