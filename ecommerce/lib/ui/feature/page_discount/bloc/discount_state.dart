import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/cart.dart';

part 'discount_state.freezed.dart';

enum DisCountStatus { init, inProgress, success }

@freezed
class DisCountState with _$DisCountState {
  factory DisCountState({
 required int current
  }) = _DisCountState;

  const DisCountState._();

  factory DisCountState.initial() => DisCountState(
    current: -1
       
      );
}
