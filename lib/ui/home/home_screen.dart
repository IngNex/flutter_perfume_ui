import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newPerfume = [
      'assets/perfume/9.png',
      'assets/perfume/7.png',
      'assets/perfume/4.png',
      'assets/perfume/1.png',
    ];
    final perfume = [
      'assets/perfume/1.png',
      'assets/perfume/2.png',
      'assets/perfume/3.png',
      'assets/perfume/4.png',
      'assets/perfume/5.png',
      'assets/perfume/6.png',
      'assets/perfume/7.png',
      'assets/perfume/8.png',
      'assets/perfume/9.png',
      'assets/perfume/10.png',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    size: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red.shade900,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Image(
                      width: 35,
                      image: AssetImage('assets/ingnex.png'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Perfume',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text('& Scents 1990',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Collections',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.red.shade800,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 50,
                          height: 1,
                          color: Colors.red.shade800,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  itemCount: newPerfume.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 165,
                      margin:
                          const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(0, 255, 255, 255),
                            Colors.red.shade100,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(image: AssetImage(perfume[index])),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Products',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.red.shade800,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 50,
                          height: 1,
                          color: Colors.red.shade800,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: perfume.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red.shade100,
                                    ),
                                    child: Image(
                                      width: 100,
                                      image: AssetImage(perfume[index]),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Emporio Armani',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text("Because It's You"),
                                          Text(
                                            "Quantity",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            '100 ml',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.favorite_border_rounded,
                                            color: Colors.red.shade900,
                                          ),
                                          const Column(
                                            children: [
                                              Text(
                                                'price',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '\$',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    '299',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.red.shade900,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.add),
                              Icon(Icons.add),
                              Icon(Icons.add),
                              Icon(Icons.add),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
