import 'package:al_quran_app/core/core.dart';
import 'package:al_quran_app/features/listquran/data/models/list_ayat.dart';
import 'package:al_quran_app/features/listquran/data/repositories/list_quran_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetListQuran {
  final ListQuranRepository repository;
  GetListQuran({required this.repository});
  Future<Either<AppException, List<ListAyat>>> call() async {
    return await repository.getListQuran();
  }
}
