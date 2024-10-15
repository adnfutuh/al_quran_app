import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/services/geolocation/city_detail_object.dart';
import '../../domain/usecases/get_location_data.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

class PrayerCubit extends Cubit<PrayerState> {
  late GetLocationData getLocationData; // Dinyatakan dengan late
  PrayerCubit({required this.getLocationData})
      : super(const PrayerState.initial()); // Diberikan nilai di konstruktor
  void getLocation() async {
    emit(const PrayerState.loading());
    final result =
        await getLocationData(); // Nilai sudah pasti diinisialisasi di sini
    result.fold(
      (error) => emit(const PrayerState.error()),
      (result) => emit(PrayerState.success(cityDetail: result)),
    );
  }
}
