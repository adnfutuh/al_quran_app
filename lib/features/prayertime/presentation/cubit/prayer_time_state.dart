part of 'prayer_time_cubit.dart';

@freezed
class PrayerTimeState with _$PrayerTimeState {
  const factory PrayerTimeState.initial() = _Initial;
  const factory PrayerTimeState.loading() = _Loading;
  const factory PrayerTimeState.success({
    required PrayerTimeModel prayerTime,
  }) = _Success;
  const factory PrayerTimeState.error({required AppException error}) = _Error;
}
