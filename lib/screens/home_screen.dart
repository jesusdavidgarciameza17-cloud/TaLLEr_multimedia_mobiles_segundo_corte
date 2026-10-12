import 'package:flutter/material.dart';
import '../widgets/image_carousel.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const [
        PromotionalBanner(
          titulo: 'Torneo de la semana',
          descripcion: 'Inscríbete al torneo y gana premios y monedas de bonificación.',
          icono: Icons.emoji_events,
          colorFondo: Color.fromARGB(255, 0, 183, 255),
          textoBoton: 'Inscribirme',
        ),
        ImageCarousel(),
        PostCard(
          usuario: 'Laura Gómez',
          avatarUrl:
              'https://i.pinimg.com/474x/43/83/bc/4383bcf0079b9d414be5c9576960ae3f.jpg',
          imagenUrl:
              'https://i.ytimg.com/vi/5trDH93QmWw/hq720.jpg?sqp=-oaymwExCK4FEIIDSFryq4qpAyMIARUAAIhCGAHwAQH4Af4JgALQBYoCDAgAEAEYZSBAKEUwDw==&rs=AOn4CLBFmsAkdg8buUTyBhIg4ePbMRWZOQ',
          descripcion: 'Por fin llegué a nivel 50. ¡Gracias al equipo por la ayuda!',
        ),
        PostCard(
          usuario: 'Carlos Pérez',
          avatarUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJV8WkeRBhJ2Boq8bKYPcIICnzATFeTEiQXbbybGnbOqxEciW2AKPkjSi_&s=10',
          imagenUrl: 'https://i.ytimg.com/vi/1dad4Xq1g0s/sddefault.jpg',
          descripcion: 'Mi nuevo setup para jugar. ¿Qué le falta?',
        ),
      ],
    );
  }
}