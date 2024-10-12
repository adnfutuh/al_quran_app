import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:al_quran_app/core/exeptions/app_exception.dart';

abstract class InternetConnectionSevice {
  Future<void> chekConnectivityState();
}

class InternetConnectionServiceImpl implements InternetConnectionSevice {
  final Connectivity connectivity;
  InternetConnectionServiceImpl({required this.connectivity});

  @override
  Future<void> chekConnectivityState() async {
    try {
      final List<ConnectivityResult> result =
          await connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.wifi)) {
        return;
      } else if (result.contains(ConnectivityResult.wifi)) {
        return;
      } else {
        throw const InternetConnectionException();
      }
    } on Exception catch (e) {
      throw InternetConnectionException(message: e.toString());
    }
  }
}
