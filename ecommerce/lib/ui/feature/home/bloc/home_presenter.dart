import 'package:dio/dio.dart';
import 'package:ecommerce/data/model/home%20/data.dart';
import 'package:ecommerce/data/model/source%20data/api_client.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomePresenter extends Cubit<HomeState> {
  HomePresenter({
    @visibleForTesting HomeState? state,
  }) : super(
          state ?? HomeState.initial(),
        );
  ApiClient apiClient = ApiClient(Dio());
  init() async {
    final List<Data> productHome;
    productHome = await apiClient.getFilm().then(
          (value) => value.result.data,
        );
    emit(
      state.copyWith(productHome: productHome),
    );
  }
}
