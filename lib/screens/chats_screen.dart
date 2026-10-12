import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const [
        ChatTile(
          nombre: 'Laura Gómez',
          ultimoMensaje: '¿Jugamos una partida esta noche?',
          hora: '10:45',
          colorAvatar: Colors.pink,
          noLeidos: 3,
        ),
        ChatTile(
          nombre: 'Carlos Pérez',
          ultimoMensaje: 'Te mando la invitación al torneo',
          hora: '10:12',
          colorAvatar: Colors.blue,
          noLeidos: 1,
        ),
        ChatTile(
          nombre: 'Clan Los Imparables',
          ultimoMensaje: 'Hoy tenemos entrenamiento a las 8',
          hora: '09:30',
          colorAvatar: Colors.orange,
          noLeidos: 12,
        ),
        ChatTile(
          nombre: 'Daniel Torres',
          ultimoMensaje: 'Pásame tu usuario para agregarte',
          hora: 'Ayer',
          colorAvatar: Colors.purple,
        ),
        ChatTile(
          nombre: 'Andrea Ruiz',
          ultimoMensaje: 'Jajaja, qué partida tan épica',
          hora: 'Ayer',
          colorAvatar: Colors.green,
        ),
      ],
    );
  }
}