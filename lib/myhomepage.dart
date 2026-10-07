import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("rekapabsensi")),
      backgroundColor: Color.fromARGB(172, 245, 225, 136),
      body:Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Color.fromARGB(197, 220, 155, 155),
              child: TextField(
                //dekorasi untk ptunjuk pngisian & garis
                decoration: InputDecoration(
                  hintText: 'Masukan Nama Kamu',
                  border: OutlineInputBorder(),
                ),
                //kontrolller untk
                controller: inputNama,
                //ktika nnti dikirim
                onSubmitted: (values) {
                  inputNama.text = values;
                  //isi
                },
              ),
            ),
          ),
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed:(){
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
    
}