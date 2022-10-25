import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic, color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        toolbarHeight: 150,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        backgroundColor: Colors.cyan,
        title: const Image(
            color: Colors.white,
            width: 100,
            height: 50,
            image: AssetImage("assets/images/amazon.png")),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.cyan,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.cyan,
                    ),
                  ),
                  hintText: "What are you looking for?",
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blueGrey,
            width: double.infinity,
            child: Row(children: const [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Deliver to Korea, Republic of",
                style: TextStyle(color: Colors.white),
              )
            ]),
          ),
          Stack(
            children: [
              Container(
                color: Colors.white,
                height: 145,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "We ship 45million\nproduct",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                top: 0,
                child: Container(
                  width: 200,
                  decoration:  const BoxDecoration(
                      color: Color(0xFF30BFDA),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          bottomLeft: Radius.circular(70))),
                    child: const Image(image: AssetImage("assets/images/carremove.png")),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
