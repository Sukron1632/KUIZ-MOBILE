import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/zola.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Nama: Zola Dimas Firmansyah', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              const Text('NIM: 124220106', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              const Text('Tempat Lahir: Sleman', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              const Text('Tanggal Lahir: 21 Agustus 2004', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              const Text('Hobi: Maingame', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
