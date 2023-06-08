import 'package:flutter/material.dart';
import 'package:vbank/screens/contact.dart';

import 'info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Virtual Bank'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> pages = [const Login(), const Contact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          iconSize: 30,
          fixedColor: const Color.fromARGB(255, 198, 36, 227),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone), label: 'Contact Us')
          ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // ignore: non_constant_identifier_names
  var Key = GlobalKey<FormState>();

  bool validate() {
    return Key.currentState!.validate();
  }

  TextEditingController control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/vbank.png')),
              const Text(
                'Welcome to V!',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'dettyboy@icloud.com',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Change account?',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(146, 36, 138, 222)),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: Key,
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  // validator: ,
                  obscureText: true,
                  controller: control,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                  ),

                  validator: (anything) {
                    if (control.text.length < 5) {
                      return "Password must be greater than 5";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('Forgot Password?')],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 198, 36, 227)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyWidget()));
                      },
                      child: const Text('Sign In With Face ID'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create an account',
                style: TextStyle(color: Color.fromARGB(255, 198, 36, 227)),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text('v3.0.12')
            ],
          ),
        ),
      ),
    );
  }
}
