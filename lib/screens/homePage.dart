import 'package:flutter/material.dart';
import 'package:travel_app/screens/place_view.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> category = ['Most Viewd', 'Popular', 'Near By', 'Latest'];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home),
              Icon(Icons.av_timer_outlined),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, David 👋',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Explore the world',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://filmfare.wwmindia.com/content/2023/jul/rashmikamandannadhanush11690357640.jpg',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: (size.width - 16) * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Places',
                          ),
                        ),
                      ),
                      Container(width: 1, height: 30, color: Colors.grey),
                      SizedBox(width: 20),
                      Icon(Icons.filter_list_outlined),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Places',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(category.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedCategory = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  selectedCategory == index
                                      ? Colors.blue.shade800
                                      : Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 18,
                              ),
                              child: Text(
                                category[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlaceView(),
                            ),
                          );
                        },
                        child: Container(
                          width: size.width * 0.7,
                          height: (size.width * 0.7) * 1.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://tse2.mm.bing.net/th?id=OIP.q-dTLhr6OZxerwZRPEaw8AHaNK&pid=Api&P=0&h=220',
                              ),
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                right: 12,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black.withOpacity(
                                    0.5,
                                  ),
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.grey.shade200,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade900.withOpacity(
                                          0.8,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Mount Fuji',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                Text(
                                                  ' ,Tokyo',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade200,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on_rounded,
                                                      color:
                                                          Colors.grey.shade300,
                                                      size: 20,
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      'Tokyo , Japan',
                                                      style: TextStyle(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .star_border_purple500,
                                                      color:
                                                          Colors.grey.shade300,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '4.8',
                                                      style: TextStyle(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: size.width * 0.7,
                        height: (size.width * 0.7) * 1.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://wallpaperaccess.com/full/9578414.jpg',
                            ),
                          ),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 12,
                              right: 12,
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.5),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: size.width * 0.5,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade900.withOpacity(
                                        0.8,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Andes Mountain',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                ' ,Tokyo',
                                                style: TextStyle(
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    color: Colors.grey.shade300,
                                                    size: 20,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Tokyo , Japan',
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border_purple500,
                                                    color: Colors.grey.shade300,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    '3.8',
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: size.width * 0.7,
                        height: (size.width * 0.7) * 1.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://tse2.mm.bing.net/th?id=OIP.j5MzN1W_xK0Pj3rS-zDxCAHaNK&pid=Api&P=0&h=220',
                            ),
                          ),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 12,
                              right: 12,
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.5),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: size.width * 0.5,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade900.withOpacity(
                                        0.8,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Mount Fuji',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                ' ,Tokyo',
                                                style: TextStyle(
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    color: Colors.grey.shade300,
                                                    size: 20,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'Tokyo , Japan',
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border_purple500,
                                                    color: Colors.grey.shade300,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    '4.8',
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
