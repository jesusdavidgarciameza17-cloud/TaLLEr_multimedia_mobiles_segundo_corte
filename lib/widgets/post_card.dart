import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String usuario;
  final String avatarUrl;
  final String imagenUrl;
  final String descripcion;

  const PostCard({
    super.key,
    required this.usuario,
    required this.avatarUrl,
    required this.imagenUrl,
    required this.descripcion,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _meGusta = false;
  int _cantidadMeGusta = 24;

  void _alternarMeGusta() {
    setState(() {
      _meGusta = !_meGusta;
      _cantidadMeGusta += _meGusta ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    widget.avatarUrl,
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 44,
                        height: 44,
                        color: Colors.teal.shade100,
                        child: const Icon(Icons.person),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.usuario,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            widget.imagenUrl,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 220,
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_not_supported, size: 48),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(widget.descripcion),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 12, bottom: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: _alternarMeGusta,
                  icon: Icon(
                    _meGusta ? Icons.favorite : Icons.favorite_border,
                    color: _meGusta ? Colors.red : Colors.grey.shade700,
                  ),
                ),
                Text('$_cantidadMeGusta'),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble_outline, color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}