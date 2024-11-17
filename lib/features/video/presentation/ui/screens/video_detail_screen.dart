import 'dart:developer';
import 'package:al_quran_app/features/video/presentation/ui/widgets/comment.dart';
import 'package:al_quran_app/features/video/presentation/ui/widgets/like_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/core.dart';
import '../widgets/dummy_data.dart';
import '../widgets/item_card.dart';
import '../../cubit/video_cubit.dart';

class VideoDetailScreen extends StatefulWidget {
  final String videoId;

  const VideoDetailScreen({super.key, required this.videoId});

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  bool _isExpanded1 = false;

  @override
  void initState() {
    super.initState();
    GetIt.I<VideoCubit>();
  }

  void _toggleExpansion1() {
    setState(() {
      _isExpanded1 = !_isExpanded1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Pallet.whiteScaffold,
        body: BlocBuilder<VideoCubit, VideoState>(
          builder: (context, state) {
            log(state.runtimeType.toString());
            log(state.toString());
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: YoutubePlayer(
                          controller: controller,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.amber,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 5,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () {
                            context.go('/navbar/home');
                          },
                        ),
                      ),
                    ],
                  ),
                  state.maybeWhen(
                    success: (liveVideos, nonLiveVideos) {
                      final videoItem = liveVideos.items
                          .where((item) => item.id.videoId == widget.videoId)
                          .firstOrNull;

                      final videoItem2 = nonLiveVideos.items
                          .where((item) => item.id.videoId == widget.videoId)
                          .firstOrNull;

                      if (videoItem == null && videoItem2 == null) {
                        return const Center(
                            child: Text("Video tidak ditemukan"));
                      }

                      final video = videoItem ?? videoItem2;

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              video!.snippet.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.youtube,
                                      color: Colors.red,
                                      size: 24,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      video.snippet.channelTitle,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                  ),
                                  child: const Text(
                                    'Lihat Channel',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const LikeItem(),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Share',
                                      icon: Icons.share,
                                      onTap: () {},
                                    ),
                                  ),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Remix',
                                      icon: Icons.music_note,
                                      onTap: () {},
                                    ),
                                  ),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Download',
                                      icon: Icons.download,
                                      onTap: () {},
                                    ),
                                  ),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Clip',
                                      icon: Icons.cut,
                                      onTap: () {},
                                    ),
                                  ),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Save',
                                      icon: Icons.bookmark,
                                      onTap: () {},
                                    ),
                                  ),
                                  ItemCard(
                                    item: ItemMenu(
                                      name: 'Report',
                                      icon: Icons.report,
                                      onTap: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Pallet.grey10,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Description',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Pallet.black)),
                                      IconButton(
                                        icon: Icon(
                                          _isExpanded1
                                              ? Icons.keyboard_arrow_down
                                              : Icons.keyboard_arrow_up,
                                          color: Pallet.black,
                                          size: 24,
                                        ),
                                        onPressed: _toggleExpansion1,
                                      ),
                                    ],
                                  ),
                                  if (_isExpanded1)
                                    Column(
                                      children: [
                                        const Divider(
                                          thickness: 2,
                                          color: Pallet.grey,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            video.snippet.description,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Pallet.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Pallet.grey10,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: const Text('Comments',
                                        style: TextStyle(
                                            fontSize: 18, color: Pallet.black)),
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    color: Pallet.grey,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: DummyData.comments.length,
                                    itemBuilder: (context, index) {
                                      final comment = DummyData.comments[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Comment(
                                          imageProfile: comment.imageProfile,
                                          userName: comment.userName,
                                          comment: comment.comment,
                                          jumlahLike: comment.jumlahLike,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    error: (error) {
                      return Center(child: Text('Error: ${error.message}'));
                    },
                    orElse: () {
                      return const Center(
                          child: Text("Tidak ada data tersedia"));
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
