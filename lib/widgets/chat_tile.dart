import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String ultimoMensaje;
  final String hora;
  final Color colorAvatar;
  final int noLeidos;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.ultimoMensaje,
    required this.hora,
    required this.colorAvatar,
    this.noLeidos = 0, // si no se indica, no hay mensajes sin leer
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          // Avatar con la inicial del nombre
          CircleAvatar(
            radius: 26,
            backgroundColor: colorAvatar,
            child: Text(
              nombre[0],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Nombre y último mensaje (ocupan el espacio sobrante)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  ultimoMensaje,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          // Hora e indicador de no leídos
          Column(
            children: [
              Text(
                hora,
                style: TextStyle(
                  fontSize: 12,
                  color: noLeidos > 0 ? Colors.teal : Colors.grey,
                ),
              ),
              const SizedBox(height: 6),
              if (noLeidos > 0)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '$noLeidos',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}