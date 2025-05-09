import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/video/data/models/video_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/env/env.dart';

abstract class VideoRemoteDatasource {
  Future<VideoModel> getVideo({required String query, required bool isLive});
}

@LazySingleton(as: VideoRemoteDatasource)
class VideoRemoteDatasourceImpl implements VideoRemoteDatasource {
  final HttpClientService httpClientService;

  VideoRemoteDatasourceImpl({@Named('base') required this.httpClientService});

  @override
  Future<VideoModel> getVideo(
      {required String query, required bool isLive}) async {
    try {
      final apiKey2 = Env.apiKey2;
      final eventType = isLive ? '&eventType=live' : '';

      final response = await httpClientService.get(
        path:
            'https://www.googleapis.com/youtube/v3/search?part=snippet&q=$query&type=video$eventType&maxResults=1&key=$apiKey2',
      );

      if (response.statusCode != 200) {
        throw ServerException(
            error: response.data, message: 'Failed to fetch video data');
      }

      return VideoModel.fromJson(response.data);
    } catch (e) {
      throw ServerException(error: e, message: e.toString());
    }
  }
}
