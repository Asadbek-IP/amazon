import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "assets/images/apple2.jpg",
    "assets/images/apple2.jpg",
    "assets/images/apple2.jpg",
    "assets/images/apple2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
        toolbarHeight: 100,
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
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
      body: SingleChildScrollView(
        child: Column(
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
                    mainAxisAlignment: MainAxisAlignment.end,
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
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Color(0xFF30BFDA),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            bottomRight: Radius.circular(70))),
                    child: const Image(
                        image: AssetImage("assets/images/carremove.png")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign in for the best experience",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.orange)),
                      onPressed: () {},
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Deal of the Day",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Image(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                    image: AssetImage("assets/images/apple2.jpg"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Up to 31% off APC UPS Battery Back\n\$10.99 - \$79.9",
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 71, 71), fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Best sellers in Electronics",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView.count(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2,
                      children: List.generate(
                        images.length,
                        (index) => Image(
                          fit: BoxFit.cover,
                          width: 300,
                          height: 200,
                          image: AssetImage(images[index]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Top products in Camera",
                            style: TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 200,
                              image: AssetImage("assets/images/apple2.jpg")),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Image(
                                    fit: BoxFit.cover,
                                    height: 180,
                                    image:
                                        AssetImage("assets/images/apple2.jpg")),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Image(
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 180,
                                    image:
                                        AssetImage("assets/images/apple2.jpg")),
                              ),
                            ],
                          )
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
