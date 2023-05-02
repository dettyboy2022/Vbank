import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cards',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: CardTab(),
      ),
    );
  }
}

class CardTab extends StatefulWidget {
  const CardTab({super.key});

  @override
  State<CardTab> createState() => _CardTabState();
}

class _CardTabState extends State<CardTab> with TickerProviderStateMixin {
  late TabController tabControll;

  @override
  void initState() {
    tabControll = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: TabBar(
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10)),
            controller: tabControll,
            tabs: const [
              Tab(
                text: 'Virtual',
              ),
              Tab(
                text: 'Physical',
              ),
              Tab(
                text: 'Others',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBarView(
                controller: tabControll,
                children: const [Virtual(), Physical(), Others()]),
          ),
        ),
      ],
    );
  }
}

class Virtual extends StatelessWidget {
  const Virtual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        height: 160,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Active',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '5061 24** **** 4934',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const Text('04/24'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'AYOMIDE',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.card_giftcard_sharp)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Physical extends StatelessWidget {
  const Physical({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
