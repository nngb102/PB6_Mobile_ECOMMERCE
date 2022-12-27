import 'package:ecommerce/data/model/home%20/data.dart';
import 'package:ecommerce/data/model/home%20/home_get_product.dart';
import 'package:ecommerce/utilities/helpers/validator_helper/validator_helper.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/product.dart';
import '../../../resources/app_colors.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);
  final Data product;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: product.imageURL,
                child: Image.network(
                  product.imageURL,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '${product.initialPrice} VND',
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.red,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2),
                    ),
                    Text(
                      '${ValidatorHelper().setupPrice(product.price)} VND',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
