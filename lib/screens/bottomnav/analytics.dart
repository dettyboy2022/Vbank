import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'More',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select account',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Universal Savings Account - 1003153030',
                  suffixIcon: Icon(Icons.arrow_circle_down)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              height: 300,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hey CUSTOMER, here is your transaction activities so far.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('May 2023')),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('View Analytics')),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       showBottomSheet(
            //           backgroundColor: Colors.green,
            //           shape: const RoundedRectangleBorder(
            //               borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(20),
            //                   topRight: Radius.circular(20))),
            //           context: context,
            //           builder: (context) {
            //             return Padding(
            //               padding: const EdgeInsets.all(20),
            //               child: Row(
            //                 children: [
            //                   Column(
            //                     children: const [
            //                       Text('gegegegegge'),
            //                       Text('gegegegegge'),
            //                       Text('gegegegegge'),
            //                       Text('gegegegegge'),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             );
            //           });
            //     },
            //     child: const Text('ggfgfgf'))
          ],
        ),
      ),
    );
  }
}
