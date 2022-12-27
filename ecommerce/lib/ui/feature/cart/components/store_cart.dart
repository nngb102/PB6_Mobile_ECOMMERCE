import 'package:ecommerce/data/model/cart.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_presenter.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_state.dart';
import 'package:ecommerce/ui/feature/cart/components/item_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widget/choose.dart';

class StoreCart extends StatelessWidget {
  const StoreCart({
    Key? key,
    required this.cartModel,
    required this.idStore,
    required this.cartPresenter,
    // required this.onDismissed,
  }) : super(key: key);
  final CartModel cartModel;
  final int idStore;
  final CartPresenter cartPresenter;
  // final Function() onDismissed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartPresenter, CartState>(
      bloc: cartPresenter,
      builder: (context, state) => Column(
        children: [
          Row(
            children: [
              Choose(
                function: (bool? value) {
                  cartPresenter.chooseStore(idStore);
                },
                isChecked: state.isCart[idStore].isStore!,
              ),
              const CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(
                  'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                cartModel.nameStore,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: cartModel.itemProduct.length,
            itemBuilder: (context, index) => Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                cartPresenter.onDismissed(idStore: idStore, idItem: index);
              },
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: const [
                    Spacer(),
                    Icon(Icons.restore_from_trash_outlined)
                  ],
                ),
              ),
              child: ItemCart(
                cartPresenter: cartPresenter,
                idStore: idStore,
                idItem: index,
                product: cartModel.itemProduct[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
