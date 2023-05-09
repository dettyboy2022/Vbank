import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List icon = [
    Icons.message,
    Icons.phone,
    Icons.chat,
    Icons.whatshot,
    Icons.facebook,
    Icons.transfer_within_a_station,
    Icons.install_desktop,
    Icons.youtube_searched_for
  ];
  List contact = [
    'Chat with a customer experience representative',
    'Call us',
    'FAQ',
    'Get on WhatsApp Banking',
    'Contact us on Facebook',
    'Follow us on twitter',
    'Follow us on Instagram',
    'Follow us on youtube'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Contact bank',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/contact.jpeg',
                  height: 100,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Call or Chat with us and we will answer\n any question you have',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: contact.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(icon[index]),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(contact[index])
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
