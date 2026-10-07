import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 220, 220),

      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Icon
              Icon(
                Icons.calendar_month,
                size: 70,
              ),

              SizedBox(height: 10),

              // Judul
              Text(
                'Sistem Absensi',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              // Username
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Password
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Pilih pengguna
              Text('Pilih pengguna'),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      Radio(
                        value: 'Admin',
                        groupValue: 'Admin',
                        onChanged: (value) {},
                      ),
                      Text('Admin'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                        value: 'Pegawai',
                        groupValue: 'Admin',
                        onChanged: (value) {},
                      ),
                      Text('Pegawai'),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Tombol Login
              ElevatedButton(
                onPressed: () {
                  print(username.text);
                  print(password.text);
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}