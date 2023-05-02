import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page3 extends StatelessWidget {
  Page3({super.key});

  List moreicons = [
    Icons.transfer_within_a_station_sharp,
    Icons.phone_android,
    Icons.payment,
    Icons.line_axis,
    Icons.wallet,
    Icons.qr_code,
    Icons.people,
    Icons.area_chart,
    Icons.replay_outlined,
    Icons.card_travel,
    Icons.card_travel,
    Icons.health_and_safety
  ];

  List moretext = [
    'Transfer',
    'Top-up',
    'Pay Bills',
    'Invest',
    'Fund Account',
    'QR Code',
    'Invite/Redeem',
    'Proximity Payments',
    'Recurring Transaction',
    'Cardless Withdrawals',
    'All Accounts',
    'Health Checkup'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(153, 215, 202, 202),
        title: const Text(
          'Quick Links',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                'Rearrange Quick Links',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 198, 36, 227),
                    fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4),
              itemCount: moretext.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: .5, color: Colors.grey),
                        color: Colors.white70,
                      ),
                      height: 60,
                      width: 60,
                      child: Icon(moreicons[index]),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      moretext[index],
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              })
        ]),
      ),
    );
  }
}
