import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LingkaranPage extends StatefulWidget {
  @override
  _LingkaranPageState createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  double _jariJari = 0;
  double _luas = 0;
  double _keliling = 0;

  void _hitungLuasDanKeliling() {
    setState(() {
      _luas = 3.14 * _jariJari * _jariJari;
      _keliling = 2 * 3.14 * _jariJari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menghitung Lingkaran'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Jari-Jari',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
                  ],
                  onChanged: (text) {
                    setState(() {
                      _jariJari = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
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
                Text(
                  'Keliling: ${_keliling.toStringAsFixed(2)} cm',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
