import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/navbar/presentation/ui/screens/prayer/data/repositories/prayer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/prayer_model.dart';

@lazySingleton
class GetPrayers {
  final PrayerRepository repository;
  GetPrayers(this.repository);
  Future<Either<AppException, List<PrayerModel>>> callList() {
    return repository.getPrayerList();
  }

  Future<Either<AppException, PrayerModel>> callDetail({required int id}) {
    return repository.getPrayerDetail(id: id);
  }
}
