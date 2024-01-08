import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'office',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      '38/A,3rd floor 18 main,22nd',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Container(
                    width: 1100,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/Bargar.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          left: 10,
                          child: Text(
                            'Get 50% off on Your\nfirst order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          bottom: 30,
                          left: 10,
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                backgroundColor: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Icon(Icons.search, color: Colors.grey),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildImageWithText('assets/biriyani.jpg', 'Biriyani '),
                        _buildImageWithText('assets/Bargar.jpg', 'Bargar '),
                        _buildImageWithText('assets/pizza.jpg', 'pizza '),
                        _buildImageWithText('assets/noodles.jpg', 'pizza '),
                        //add more images
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      width: 1100,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/colomn 1.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, width: 80, height: 80),
          const SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
