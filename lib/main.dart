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
      title: 'Sistem Absensi',
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
  // Controller
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Untuk menampilkan password
  bool passwordVisible = false;

  // Pilihan pengguna
  String pengguna = 'Admin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // Background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 105, 38, 52),
              Color.fromARGB(255, 245, 219, 222),
            ],
          ),
        ),

        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 330,
              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(25),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // =====================
                  // ICON ABSENSI
                  // =====================
                  const Icon(
                    Icons.calendar_month_outlined,
                    size: 75,
                    color: Colors.black87,
                  ),

                  const SizedBox(height: 10),

                  // =====================
                  // JUDUL
                  // =====================
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Sistem Absensi',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 80, 35, 45),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // =====================
                  // USERNAME
                  // =====================
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black54,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // =====================
                  // PASSWORD
                  // =====================
                  TextField(
                    controller: passwordController,
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black54,
                      ),

                      // Tombol mata
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),

                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // =====================
                  // PILIH PENGGUNA
                  // =====================
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pilih pengguna',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [

                      // ADMIN
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              pengguna = 'Admin';
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: pengguna == 'Admin'
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: pengguna == 'Admin'
                                      ? Colors.black87
                                      : Colors.black54,
                                  size: 28,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Admin',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: pengguna == 'Admin'
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      // PEGAWAI
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              pengguna = 'Pegawai';
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: pengguna == 'Pegawai'
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.groups,
                                  color: pengguna == 'Pegawai'
                                      ? Colors.black87
                                      : Colors.black54,
                                  size: 28,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Pegawai',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: pengguna == 'Pegawai'
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // =====================
                  // TOMBOL LOGIN
                  // =====================
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print('Username: ${usernameController.text}');
                        print('Password: ${passwordController.text}');
                        print('Pengguna: $pengguna');

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Login sebagai $pengguna',
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.edit_calendar,
                        color: Colors.black87,
                      ),
                      label: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}