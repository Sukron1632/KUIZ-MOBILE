import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TrapesiumPage extends StatefulWidget {
  @override
  _TrapesiumPageState createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  double _alas1 = 0;
  double _alas2 = 0;
  double _tinggi = 0;
  double _sisiMiring1 = 0;
  double _sisiMiring2 = 0;
  double _luas = 0;
  double _keliling = 0;

  void _hitungLuasDanKeliling() {
    setState(() {
      _luas = 0.5 * (_alas1 + _alas2) * _tinggi;
      _keliling = _alas1 + _alas2 + _sisiMiring1 + _sisiMiring2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menghitung Trapesium'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
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
                    labelText: 'Alas 1',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (text) {
                    setState(() {
                      _alas1 = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Alas 2',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (text) {
                    setState(() {
                      _alas2 = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Tinggi',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (text) {
                    setState(() {
                      _tinggi = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Sisi Miring 1',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (text) {
                    setState(() {
                      _sisiMiring1 = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Sisi Miring 2',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (text) {
                    setState(() {
                      _sisiMiring2 = double.tryParse(text) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
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
