import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Comment extends StatefulWidget {
  final IconData imageProfile;
  final String userName;
  final String comment;
  final String jumlahLike;
  const Comment(
      {super.key,
      required this.imageProfile,
      required this.userName,
      required this.comment,
      required this.jumlahLike});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool isLiked = false;
  bool isDisliked = false;
  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      isDisliked = false;
    });
  }

  void toggleDislike() {
    setState(() {
      isDisliked = !isDisliked;
      isLiked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularAvatarWidget(
              size: 30, imagePath: Icon(widget.imageProfile, size: 20)),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(color: Pallet.black.withOpacity(0.5)),
                ),
                Text(
                  widget.comment,
                  style: const TextStyle(color: Pallet.black),
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      splashColor: Colors.black.withOpacity(0.2),
                      highlightColor: Colors.black.withOpacity(0.1),
                      onTap: () {
                        toggleLike();
                      },
                      child: Icon(
                        isLiked
                            ? Icons.thumb_up_off_alt_rounded
                            : Icons.thumb_up_off_alt,
                        size: 18,
                        color: isLiked ? Colors.black : Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.jumlahLike,
                      style: const TextStyle(color: Pallet.black),
                    ),
                    IconButton(
                      onPressed: () {
                        toggleDislike();
                      },
                      icon: Icon(
                        isDisliked
                            ? Icons.thumb_down_rounded
                            : Icons.thumb_down_off_alt,
                        size: 18,
                        color: isDisliked ? Colors.black : Colors.grey,
                      ),
                    ),
                    const Icon(
                      Icons.comment,
                      size: 18,
                      color: Pallet.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Icon(
            FontAwesomeIcons.ellipsisVertical,
            size: 18,
            color: Pallet.black,
          )
        ],
      ),
    );
  }
}
