import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _valor = 0; // la variable numérica que cambia

  void _incrementar() {
    setState(() {
      if (_valor < 10) _valor++; // límite máximo
    });
  }

  void _disminuir() {
    setState(() {
      if (_valor > 0) _valor--; // no permite negativos
    });
  }

  void _reiniciar() {
    setState(() {
      _valor = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Cantidad',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            '$_valor',
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: _valor == 10 ? Colors.red : Colors.teal,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: _disminuir,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _incrementar,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: _reiniciar,
            child: const Text('Reiniciar'),
          ),
        ],
      ),
    );
  }
}