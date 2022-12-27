import 'package:ecommerce/ui/feature/page_map/bloc/map_presenter.dart';
import 'package:ecommerce/ui/widget/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/map_state.dart';

class InputAddress extends StatelessWidget {
  const InputAddress({Key? key, required this.mapPresenter}) : super(key: key);
  final MapPresenter mapPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapPresenter, MapState>(
      bloc: mapPresenter,
      builder: (context, state) => TextFieldInput(
        onChanged:((value) => {}) ,
        hintText: '',
        isPass: false,
        textEditingController: mapPresenter.textEditingController,
        textInputType: TextInputType.streetAddress,
      ),
    );
  }
}
