import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/data/models/prayer_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../core/core.dart';
import '../../domain/usecases/get_prayers.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

@singleton
class PrayerCubit extends Cubit<PrayerState> {
  final GetPrayers GetPrayer;

  List<PrayerModel>? _cachedPrayerList;
  final Map<int, PrayerModel> _cachedPrayerDetails = {};

  PrayerCubit(this.GetPrayer) : super(const PrayerState.initial());

  Future<void> fetchPrayerList() async {
    if (_cachedPrayerList != null) {
      emit(PrayerState.successList(_cachedPrayerList!));
      return;
    }

    emit(const PrayerState.loading());

    final result = await GetPrayer.callList();

    result.fold(
      (failure) => emit(PrayerState.error(failure)),
      (prayerList) {
        _cachedPrayerList = prayerList;
        emit(PrayerState.successList(prayerList));
      },
    );
  }

  Future<void> fetchPrayerDetail(int id) async {
    if (_cachedPrayerDetails.containsKey(id)) {
      emit(PrayerState.successDetail(_cachedPrayerDetails[id]!));
      return;
    }

    emit(const PrayerState.loading());

    final result = await GetPrayer.callDetail(id: id);

    result.fold(
      (failure) => emit(PrayerState.error(failure)),
      (prayerDetail) {
        _cachedPrayerDetails[id] = prayerDetail;
        emit(PrayerState.successDetail(prayerDetail));
      },
    );
  }

  void clearCache() {
    _cachedPrayerList = null;
    _cachedPrayerDetails.clear();
    emit(const PrayerState.initial());
  }
}
