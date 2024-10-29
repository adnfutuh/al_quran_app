import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../../core/core.dart';
import '../../../../../../../../core/services/geolocation/city_detail.dart';
import '../../domain/usecases/get_location_data.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

@singleton
class LocationCubit extends Cubit<LocationState> {
  final GetLocationData getLocationData;

  LocationCubit({required this.getLocationData})
      : super(const LocationState.initial());

  Future<void> fetchLocation() async {
    emit(const LocationState.loading());

    final result = await getLocationData();

    result.fold(
      (error) {
        emit(LocationState.error(error));
      },
      (cityDetail) {
        emit(LocationState.success(cityDetail));
      },
    );
  }
}
