// Flutter Project: Navigasi & Pengiriman Data
// File utama: main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Beranda")),
      drawer: AppDrawer(),
      body: Center(child: Text("Selamat Datang di Beranda!")),
    );
  }
}

class ProductPage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"id": "1", "name": "Produk A"},
    {"id": "2", "name": "Produk B"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produk")),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    productId: products[index]['id']!,
                    productName: products[index]['name']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final String productId;
  final String productName;

  ProductDetailPage({required this.productId, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productName)),
      body: Center(
        child: Text("Detail produk ID: $productId"),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      drawer: AppDrawer(),
      body: Center(child: Text("Nama: Bayu dani kurniawan\nEmail: BayuDani@gmail.com")),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
      drawer: AppDrawer(),
      body: Center(child: Text("Versi 1.0.0\nDikembangkan oleh bayu dani")),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Menu Navigasi', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: Text('Beranda'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
          ),
          ListTile(
            title: Text('Produk'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage())),
          ),
          ListTile(
            title: Text('Profil'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage())),
          ),
          ListTile(
            title: Text('Tentang Aplikasi'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage())),
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage())),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
