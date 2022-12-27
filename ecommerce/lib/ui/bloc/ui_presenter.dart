
import 'package:ecommerce/ui/bloc/ui_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class UiPresenter extends Cubit<UiState> {
  UiPresenter(
     {
    @visibleForTesting UiState? state,
  }) : super(state ?? UiState.initial());

  void addToken  (String? token){
    emit(state.copyWith(token: token));
  }

  
}
