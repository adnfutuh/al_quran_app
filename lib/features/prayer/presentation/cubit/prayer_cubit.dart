import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/core.dart';
import '../../../../core/services/geolocation/geolocation_service.dart';
import '../../data/models/prayer_time_model.dart';
import '../../domain/usecases/get_prayer_time.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

@singleton
class PrayerCubit extends Cubit<PrayerState> {
  final GetPrayerTimes
      getPrayerTimes; // Use case untuk mendapatkan waktu sholat
  final GeolocationService geolocationService; // Layanan geolocation

  PrayerCubit(
    this.geolocationService, {
    required this.getPrayerTimes,
  }) : super(const PrayerState.initial());

  // Fungsi untuk mendapatkan waktu sholat berdasarkan lokasi pengguna
  void fetchPrayerTime() async {
    emit(const PrayerState.loading());

    try {
      // Ambil posisi pengguna
      final position = await geolocationService.getCurrentPosition();

      // Dapatkan detail kota dan negara
      final cityDetail = await geolocationService.getCityDetails(position);

      // Gunakan kota dan negara untuk mendapatkan waktu sholat
      final prayerTimeResult = await getPrayerTimes(
        cityDetail.locality, // Nama kota
        cityDetail.country, // Nama negara
      );

      prayerTimeResult.fold(
        (error) => emit(PrayerState.error(error: error)),
        (prayerTime) => emit(
          PrayerState.success(prayerTime: prayerTime),
        ),
      );
    } catch (error) {
      emit(PrayerState.error(
          error: DefaultAppException(message: error.toString())));
    }
  }
}


//@singleton: Ini berarti objek akan dibuat sekali dan digunakan di seluruh aplikasi.

//@lazySingleton  Ini berarti objek tidak akan dibuat sampai benar-benar diperlukan, membantu menghemat sumber daya saat aplikasi pertama kali dijalankan.

//@Lazysingleton:Ini hanya variasi penulisan. Di Flutter, penting untuk menggunakan penamaan yang tepat (biasanya registerLazySingleton) untuk memastikan fungsionalitas yang diinginkan

