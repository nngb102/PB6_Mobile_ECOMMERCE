import 'package:ecommerce/data/model/product.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:ecommerce/utilities/helpers/validator_helper/validator_helper.dart';
import 'package:flutter/material.dart';

import '../../../widget/start.dart';
import 'commentsCustomer.dart';
import 'confirmSize.dart';
import 'describe.dart';
import 'information_store.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      color: AppColors.primary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: SizedBox(
                child: Column(
                  children: [
                    Hero(
                      tag: product.image,
                      child: Image.network(
                        product.image,
                        height: 350,
                        width: size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    child: Text(
                                      product.name,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      ...List.generate(
                                        5,
                                        (index) => const Star(check: true),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${ValidatorHelper().setupPrice(product.priceBefore)} VND ',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.red,
                                        decoration: TextDecoration.lineThrough,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        decorationThickness: 2),
                                  ),
                                  Text(
                                    '${ValidatorHelper().setupPrice(product.price)} VND',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          //  Text(
                          //   product.title,
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ConfirmSize(
              productSize: product.size,
              productColors: product.color,
            ),
            const SizedBox(
              height: 10,
            ),
            const CommentCustomer(),
            const SizedBox(
              height: 10,
            ),
            const InformationStore(),
            const SizedBox(
              height: 10,
            ),
            const Describe(),
          ],
        ),
      ),
    );
  }
}
