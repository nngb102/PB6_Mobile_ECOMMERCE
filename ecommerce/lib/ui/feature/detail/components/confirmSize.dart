import 'package:ecommerce/ui/feature/detail/bloc/detail_state.dart';
import 'package:ecommerce/ui/widget/box_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection/injector.dart';
import '../../../resources/app_colors.dart';
import '../../../widget/box_size_item.dart';
import '../bloc/detail_presenter.dart';

class ConfirmSize extends StatelessWidget {
  const ConfirmSize({
    Key? key,
    required this.productSize,
    required this.productColors,
  }) : super(key: key);

  final List<String> productSize;
  final List<Color> productColors;

  @override
  Widget build(BuildContext context) {
    final detailPresenter = injector.get<DetailPresenter>();
    return BlocBuilder<DetailPresenter, DetailState>(
      bloc: detailPresenter,
      builder: (context, state) => Container(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Chọn các tùy chọn',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Kích Cỡ, Màu Sắc',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ...List.generate(
                      productColors.length,
                      (index) => BoxColor(
                            onTap: () {
                              detailPresenter.onTapColor(index, productColors[index]);
                            },
                            isSelected:
                                index == state.currentColor ? true : false,
                            color: productColors[index],
                          ),),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ...List.generate(
                    productSize.length,
                    (index) => BoxSizeItem(
                      size: productSize[index],
                      onTap: () {
                        detailPresenter.onTapSize(index,productSize[index]);
                      },
                      check: index == state.currentSize ? true : false,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
