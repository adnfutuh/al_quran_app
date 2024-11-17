import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';

class LikeItem extends StatefulWidget {
  const LikeItem({super.key});

  @override
  State<LikeItem> createState() => _LikeItemState();
}

class _LikeItemState extends State<LikeItem> {
  bool isLiked = false;
  bool isDisliked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      isDisliked = false;
    });
  }

  void _toggleDislike() {
    setState(() {
      isDisliked = !isDisliked;
      isLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Pallet.grey10,
      child: Row(
        children: [
          // Like Button
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                _toggleLike();
              },
              splashColor: Colors.black.withOpacity(0.2),
              highlightColor: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                        isLiked
                            ? Icons.thumb_up_off_alt_rounded
                            : Icons.thumb_up_off_alt,
                        size: 24,
                        color: isLiked ? Colors.black : Colors.grey),
                    const SizedBox(width: 8),
                    const Text(
                      '20 rb',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),

          Container(
            height: 24,
            width: 2,
            color: Colors.grey,
          ),
          const SizedBox(width: 10),

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                _toggleDislike();
              },
              splashColor: Colors.black.withOpacity(0.2),
              highlightColor: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                    isDisliked
                        ? Icons.thumb_down_rounded
                        : Icons.thumb_down_off_alt,
                    size: 24,
                    color: isDisliked ? Colors.black : Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
