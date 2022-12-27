import 'package:ecommerce/data/model/cart.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class UiState with _$UiState {
  factory UiState({
   
    required String? token,
    
    
  }) = _UiState;

  const UiState._();

  factory UiState.initial() => UiState(token:null);
}



  

