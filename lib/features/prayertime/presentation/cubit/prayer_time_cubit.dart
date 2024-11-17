import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/core.dart';
import '../../../../core/services/geolocation/geolocation_service.dart';
import '../../data/models/prayer_time_model.dart';
import '../../domain/usecases/get_prayer_time.dart';

part 'prayer_time_state.dart';
part 'prayer_time_cubit.freezed.dart';

@singleton
class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  final GetPrayerTimes getPrayerTimes;
  final GeolocationService geolocationService;
  PrayerTimeModel? _cachedPrayerTime;

  PrayerTimeCubit(
    this.geolocationService, {
    required this.getPrayerTimes,
  }) : super(const PrayerTimeState.initial());

  void fetchPrayerTime() async {
    if (_cachedPrayerTime != null) {
      emit(PrayerTimeState.success(prayerTime: _cachedPrayerTime!));
      return;
    }

    emit(const PrayerTimeState.loading());

    try {
      final position = await geolocationService.getCurrentPosition();
      final cityDetail = await geolocationService.getCityDetails(position);
      final prayerTimeResult = await getPrayerTimes(
        cityDetail.locality,
        cityDetail.country,
      );

      prayerTimeResult.fold(
        (error) => emit(PrayerTimeState.error(error: error)),
        (prayerTime) {
          _cachedPrayerTime = prayerTime;
          emit(PrayerTimeState.success(prayerTime: prayerTime));
        },
      );
    } catch (error) {
      emit(PrayerTimeState.error(
          error: DefaultAppException(message: error.toString())));
    }
  }

  // Metode untuk menghapus cache jika diperlukan
  void clearCache() {
    _cachedPrayerTime = null;
  }
}
