import 'package:flutter/material.dart';

class TopDesign extends StatelessWidget {
  const TopDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                ),
                SizedBox(width: 31),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cybdom",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Designers who Love codding?",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "435",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text("Fans"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "1395",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text("Followers"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "51",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text("Reviews"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
