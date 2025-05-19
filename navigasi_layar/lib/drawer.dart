import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// STEP 1: MaterialApp dengan initialRoute dan routes
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //step 1
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Home(),
        '/product': (BuildContext context) => const Product(),
        '/profil': (BuildContext context) => const Profil(),
      },
    );
  }
}

//step 2
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1485293034039-a3c69034e513?ixrp=eyJhcHBfaWQiOjEyMDd9&ixlib=rb-4.0.3&ixid=MnwvbDB8MXxvYy1f5k2k18MHk6HT4hMTYyOTU3NDE0&auto=format&fit=crop&w=800&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text(
            'Jane Doe',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Product'),
          leading: const Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/product');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Profile'),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/profil');
          },
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //step 3
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Halaman Home'),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //step 3
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: const Center(
        child: Text('Halaman product'),
      ),
    );
  }
}

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //step 3
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('Halaman profile'),
      ),
    );
  }
}


