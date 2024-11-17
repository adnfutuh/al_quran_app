import 'package:al_quran_app/features/video/presentation/cubit/video_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/core.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({super.key});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  void initState() {
    super.initState();
    GetIt.I<VideoCubit>().searchVideos("Ngaji dan Ceramah");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCubit, VideoState>(
      builder: (context, state) {
        return Column(
          children: [
            const Center(
              child: Text(
                'Ngaji Online',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),
            state.maybeWhen(
              success: (liveVideos, nonLiveVideos) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 12, right: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Video Live",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lihat Semua',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).boxFeatures,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height:
                          185 + MediaQuery.of(context).size.height / 300 * 10,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: liveVideos.items.length,
                        itemBuilder: (context, index) {
                          final item = liveVideos.items[index];
                          final thumbnailUrl = item.snippet.thumbnails.high.url;

                          return GestureDetector(
                            onTap: () =>
                                context.go('/video/${item.id.videoId}'),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: CachedNetworkImage(
                                    imageUrl: thumbnailUrl,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 12, right: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Video Non-Live",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Lihat Semua',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).boxFeatures,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height:
                          185 + MediaQuery.of(context).size.height / 300 * 10,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: nonLiveVideos.items.length,
                        itemBuilder: (context, index) {
                          final item = nonLiveVideos.items[index];
                          final thumbnailUrl = item.snippet.thumbnails.high.url;
                          return GestureDetector(
                            onTap: () =>
                                context.go('/video/${item.id.videoId}'),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: CachedNetworkImage(
                                    imageUrl: thumbnailUrl,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) => Text('Error: ${error.message}'),
              orElse: () =>
                  const Center(child: Text("Tidak ada data tersedia")),
            ),
          ],
        );
      },
    );
  }
}
