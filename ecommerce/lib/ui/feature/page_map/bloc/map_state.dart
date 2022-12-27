import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

import '../../../../data/model/cart.dart';

part 'map_state.freezed.dart';

enum MapStatus { init, inProgress, success }

@freezed
class MapState with _$MapState {
  factory MapState({
    required double? latitude,
    required double? longitude,
    required MapStatus mapStatus,
    required String address,
 
  }) = _MapState;

  const MapState._();

  factory MapState.initial() => MapState(
   latitude: null,
   longitude: null,
    mapStatus: MapStatus.init, address: 'Hoa Khanh Nam',
     
      );
}
