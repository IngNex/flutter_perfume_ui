import 'package:flutter/material.dart';
import 'package:flutter_perfume_ui/ui/detaiils/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newPerfume = [
      'assets/perfume/9.png',
      'assets/perfume/7.png',
      'assets/perfume/4.png',
      'assets/perfume/2.png',
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
    final bottomBar = [
      Icons.home,
      Icons.shopping_bag_outlined,
      Icons.sms_outlined,
      Icons.notifications_none,
      Icons.person_outlined,
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
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
              const SizedBox(height: 10),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  itemCount: newPerfume.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(bottom: 20),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 700),
                            reverseTransitionDuration:
                                const Duration(milliseconds: 700),
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: DetailsScreen(
                                  index: index,
                                  product: newPerfume[index],
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        margin: const EdgeInsets.only(
                            right: 20, top: 10, bottom: 10),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(newPerfume[index]),
                            ),
                            const Text(
                              'CK ONE',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Calvin Klein',
                              style: TextStyle(fontSize: 12),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: List.generate(
                                    3,
                                    (index) => const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                                const Text(
                                  '(1.3k Reviews+more)',
                                  style: TextStyle(fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
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
              const SizedBox(height: 10),
              Expanded(
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: perfume.length,
                      padding: const EdgeInsets.only(bottom: 80),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 700),
                                reverseTransitionDuration:
                                    const Duration(milliseconds: 700),
                                pageBuilder: (context, animation, _) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: DetailsScreen(
                                      index: index,
                                      product: perfume[index],
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
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
                          ),
                        );
                      },
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.red.shade900,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            bottomBar.length,
                            (index) => Padding(
                              padding: index == 0
                                  ? const EdgeInsets.only(right: 20)
                                  : EdgeInsets.zero,
                              child: CircleAvatar(
                                backgroundColor: index == 0
                                    ? Color.fromARGB(235, 255, 255, 255)
                                    : Colors.red.shade900,
                                radius: 30,
                                child: Icon(bottomBar[index],
                                    size: 30,
                                    color: index == 0
                                        ? Colors.red.shade900
                                        : Color.fromARGB(235, 255, 255, 255)),
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
      ),
    );
  }
}
