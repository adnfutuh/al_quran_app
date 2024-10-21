import 'package:al_quran_app/features/quran/domain/usecases/get_quran.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:al_quran_app/core/core.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/surah_model.dart';
part 'quran_state.dart';
part 'quran_cubit.freezed.dart';

@singleton
class QuranCubit extends Cubit<QuranState> {
  final GetQuran getQuran;
  QuranCubit(this.getQuran) : super(const QuranState.initial());

  void getQuranData(int id) async {
    emit(const QuranState.loading());
    final result = await getQuran(id);
    result.fold((error) {
      emit(QuranState.error(error: error));
    }, (result) {
      emit(QuranState.success(surahModel: result));
    });
  }
}
