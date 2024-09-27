import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LayangLayangPage extends StatefulWidget {
  @override
  _LayangLayangPageState createState() => _LayangLayangPageState();
}

class _LayangLayangPageState extends State<LayangLayangPage> {
  double _diagonal1 = 0;
  double _diagonal2 = 0;
  double _luas = 0;
  double _keliling = 0;

  void _hitungLuasDanKeliling() {
    setState(() {
      _luas = 0.5 * _diagonal1 * _diagonal2;
      _keliling = 2 * (_diagonal1 + _diagonal2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layang-Layang'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Diagonal 1 ',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {
                    _diagonal1 = double.tryParse(text) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Diagonal 2 ',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  setState(() {
                    _diagonal2 = double.tryParse(text) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _hitungLuasDanKeliling,
                child: const Text('Hitung Luas dan Keliling'),
              ),
              const SizedBox(height: 20),
              Text(
                'Luas: ${_luas.toStringAsFixed(2)} cm²',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Keliling: ${_keliling.toStringAsFixed(2)} cm',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
