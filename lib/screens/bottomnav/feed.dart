import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vbank/more.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List quickicons = [
    Icons.transfer_within_a_station,
    Icons.phone,
    Icons.payment,
    Icons.account_balance
  ];
  List quicklink = ['Transfer', 'Top-up', 'Pay Bills', 'Accounts'];
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/space.jpg',
      'assets/ocean.jpg',
      'assets/bus.jpg',
      'assets/hills.jpg',
      'assets/saudi.jpg',
      'assets/camels.jpg',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 65, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 198, 36, 227),
                    size: 30,
                  ),
                  Text(
                    'HELLO USER',
                    style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w100)),
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 198, 36, 227),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search the app',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 194, 141, 204),
                        Color.fromARGB(255, 209, 27, 241)
                      ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 130,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Account Balance'),
                    SizedBox(
                      height: 20,
                    ),
                    Text('AVAILABLE BALANCE :'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '100,000,000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Quick Links',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page3()));
                    },
                    child: const Text(
                      'See More',
                      style: TextStyle(
                          color: Color.fromARGB(255, 209, 27, 241),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                  itemCount: quicklink.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey[300],
                          ),
                          height: 60,
                          width: 60,
                          child: Icon(quickicons[index]),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Text(quicklink[index])
                      ],
                    );
                  }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple[200],
                    ),
                    padding: const EdgeInsets.all(13),
                    child: const Row(
                      children: [
                        Text('Savings Plans'),
                        Icon(Icons.navigate_next)
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.purple[200],
                    ),
                    padding: const EdgeInsets.all(13),
                    child: const Row(
                      children: [Text('Invest Now'), Icon(Icons.navigate_next)],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'News and Updates',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.5,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
