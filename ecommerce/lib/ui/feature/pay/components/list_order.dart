import 'package:ecommerce/data/model/product.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/cart.dart';
import '../bloc/pay_state.dart';

class ListOrder extends StatelessWidget {
  const ListOrder({
    Key? key,
    required this.payPresenter,
  }) : super(key: key);
  final PayPresenter payPresenter;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      builder: (context, state) => Container(
        width: size.width,
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 20,
              color: AppColors.black.withOpacity(0.15),
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.cart.length,
          itemBuilder: (context, index) => Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.store,
                    color: AppColors.red,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    state.cart[index].nameStore,
                    style: const TextStyle(
                        fontSize: 11, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              ListCart(
                listProductCart: state.cart[index].itemProduct,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListCart extends StatelessWidget {
  const ListCart({
    Key? key,
    required this.listProductCart,
  }) : super(key: key);
  final List<ProductCart> listProductCart;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listProductCart.length,
      itemBuilder: (context, index) => ItemOrder(
        productCart: listProductCart[index],
      ),
    );
  }
}

class ItemOrder extends StatelessWidget {
  const ItemOrder({
    Key? key,
    required this.productCart,
  }) : super(key: key);

  final ProductCart productCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 90,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            productCart.image,
            height: 70,
            width: 70,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productCart.name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'Phân loại :Af1 ${productCart.color ?? 'chua co mau'} Cao Cấp , size : ${productCart.size ?? 'chua co size'}',
                  style: const TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '${productCart.price}',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '${productCart.amount}',
              style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
