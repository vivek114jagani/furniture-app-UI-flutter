import 'package:flutter/material.dart';
import '../Widgets/quntity_counter.dart';

class ShopingCartPage extends StatefulWidget {
  const ShopingCartPage({super.key});

  @override
  State<ShopingCartPage> createState() => _ShopingCartPageState();
}

class _ShopingCartPageState extends State<ShopingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: const Text(
          "Shoping Cart",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 15,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  height: MediaQuery.of(context).size.height / 5,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        bottom: 0,
                        right: 7,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Image.asset("assets/sofa.com.png"),
                              ),
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "Gummy Sofa",
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 9,
                                            width: 9,
                                            decoration: const BoxDecoration(
                                              color: Colors.greenAccent,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          const Text("Green"),
                                        ],
                                      ),
                                      const Text(
                                        "\$ 299",
                                        style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  height: double.infinity,
                                  child: const QuntityCounter(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 17,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            color: Colors.cyan,
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 9),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Total Price: ",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey,
                ),
              ),
              Text(
                "\$1921  ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: FractionallySizedBox(
              widthFactor: 2 / 3,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: const Text(
                  "Confirm Payment",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
