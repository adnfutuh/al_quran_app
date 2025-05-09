part of 'prayer_cubit.dart';

@freezed
class PrayerState with _$PrayerState {
  const factory PrayerState.initial() = _PrayerInitial;
  const factory PrayerState.loading() = _PrayerLoading;
  const factory PrayerState.successList(List<PrayerModel> prayerList) =
      _PrayerListSuccess;
  const factory PrayerState.successDetail(PrayerModel prayerDetail) =
      _PrayerDetailSuccess;
  const factory PrayerState.error(AppException error) = _PrayerError;
}
