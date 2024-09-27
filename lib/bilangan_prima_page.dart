import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart'; 

class BilanganPrimaPage extends StatefulWidget {
  @override
  _BilanganPrimaPageState createState() => _BilanganPrimaPageState();
}

class _BilanganPrimaPageState extends State<BilanganPrimaPage> {
  int _input = 0;
  bool _isPrima = false;

  void _cekPrima() {
    setState(() {
      _isPrima = _isPrime(_input);
    });
  }

  bool _isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Bilangan Prima'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Masukkan Angka',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly 
                ],
                onChanged: (text) {
                  setState(() {
                    _input = int.tryParse(text) ?? 0;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _cekPrima,
                child: const Text('Cek Prima'),
              ),
              const SizedBox(height: 20),
              Text(
                _isPrima ? 'Bilangan Prima' : 'Bukan Bilangan Prima',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
