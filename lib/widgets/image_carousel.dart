import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String nombre;
  final String imagenUrl;

  const GameCard({
    super.key,
    required this.nombre,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.teal, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Column(
          children: [
            Image.network(
              imagenUrl,
              width: 240,
              height: 135,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 240,
                  height: 135,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.sports_esports, size: 48),
                );
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  nombre,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            'Juegos destacados',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: const [
              GameCard(
                nombre: 'Acción',
                imagenUrl:
                    'https://xboxwire.thesourcemediaassets.com/sites/4/2021/01/GamesOf2021FeatureHERO.jpg',
              ),
              GameCard(
                nombre: 'Aventura',
                imagenUrl:
                    'https://shared.fastly.steamstatic.com/store_item_assets/steam/apps/4126040/0acdc54dbcb7326bd8777ee25ff168efef004fd1/capsule_616x353.jpg?t=1790849962',
              ),
              GameCard(
                nombre: 'Estrategia',
                imagenUrl:
                    'https://m.media-amazon.com/images/M/MV5BNzEwOTE3NWYtZjM3Mi00NWNhLWI4MjgtNWEwMThhMGVkYjZiXkEyXkFqcGc@._V1_.jpg',
              ),
              GameCard(
                nombre: 'Deportes',
                imagenUrl:
                    'https://media.es.wired.com/photos/6880fadda69582ec829f6bca/3:2/w_1620,h_1080,c_limit/ea-sports-fc-26-Cover.jpg',
              ),
              GameCard(
                nombre: 'Carreras',
                imagenUrl:
                    'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/store/software/switch2/70010000095431/ff853740995f9bef45e3534b4eb3ba224a96f6bd8300a18caec18e17e5d82238',
              ),
            ],
          ),
        ),
      ],
    );
  }
}