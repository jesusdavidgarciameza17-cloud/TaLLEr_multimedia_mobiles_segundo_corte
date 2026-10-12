import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color colorFondo;
  final String textoBoton;

  const PromotionalBanner({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.colorFondo,
    this.textoBoton = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  descripcion,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
                if (textoBoton.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: colorFondo,
                    ),
                    child: Text(textoBoton),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 16),
          Icon(icono, size: 72, color: Colors.white),
        ],
      ),
    );
  }
}