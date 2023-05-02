import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  List paymenticons = [
    Icons.transfer_within_a_station_sharp,
    Icons.payment,
    Icons.phone,
    Icons.wallet,
    Icons.people,
    Icons.card_travel,
    Icons.replay_outlined,
    Icons.qr_code,
    Icons.qr_code,
    Icons.health_and_safety
  ];

  List paymenttext = [
    'Make a transfer',
    'Pay Bills',
    'Mobile top-up',
    'Cardless Withdrawals',
    'Invite/Redeem',
    'Fund Account',
    'Recurring Transaction',
    'Proximity Payments',
    'QR Code',
    'Health Checkup'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Payments',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 3),
                itemCount: paymenttext.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Column(children: [
                          Icon(
                            paymenticons[index],
                            color: Colors.purple,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            paymenttext[index],
                            textAlign: TextAlign.center,
                          )
                        ]),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
