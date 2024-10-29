import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/core.dart';
import '../../../../core/services/geolocation/city_detail.dart';
import '../../data/models/prayer_time_model.dart';
import '../../domain/usecases/get_location_data.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

@singleton
class PrayerCubit extends Cubit<PrayerState> {
  final GetPrayerTimeBasedOnLocation getPrayerTimeBasedOnLocation;

  PrayerCubit({
    required this.getPrayerTimeBasedOnLocation,
  }) : super(const PrayerState.initial());

  void fetchPrayerTime(CityDetail cityDetail) async {
    emit(const PrayerState.loading());
    try {
      final prayerTimeResult = await getPrayerTimeBasedOnLocation();
      prayerTimeResult.fold(
        (error) => emit(PrayerState.error(error: error)),
        (prayerTime) => emit(
          PrayerState.success(prayerTime: prayerTime),
        ),
      );
    } catch (e) {
      emit(
          PrayerState.error(error: DefaultAppException(message: e.toString())));
    }
  }
}




//@singleton: Ini berarti objek akan dibuat sekali dan digunakan di seluruh aplikasi.

//@lazySingleton  Ini berarti objek tidak akan dibuat sampai benar-benar diperlukan, membantu menghemat sumber daya saat aplikasi pertama kali dijalankan.

//@Lazysingleton:Ini hanya variasi penulisan. Di Flutter, penting untuk menggunakan penamaan yang tepat (biasanya registerLazySingleton) untuk memastikan fungsionalitas yang diinginkan

