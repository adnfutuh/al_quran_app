import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/geolocation/city_detail_object.dart';
import '../../domain/usecases/get_location_data.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

@singleton
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
//@singleton: Ini berarti objek akan dibuat sekali dan digunakan di seluruh aplikasi.

//@lazySingleton  Ini berarti objek tidak akan dibuat sampai benar-benar diperlukan, membantu menghemat sumber daya saat aplikasi pertama kali dijalankan.

//@Lazysingleton:Ini hanya variasi penulisan. Di Flutter, penting untuk menggunakan penamaan yang tepat (biasanya registerLazySingleton) untuk memastikan fungsionalitas yang diinginkan

