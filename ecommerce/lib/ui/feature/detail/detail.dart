import 'package:ecommerce/data/model/home%20/home_get_product.dart';
import 'package:ecommerce/data/model/product.dart';
import 'package:ecommerce/ui/feature/cart/cart.dart';
import 'package:ecommerce/ui/feature/detail/bloc/detail_presenter.dart';
import 'package:ecommerce/ui/feature/detail/bloc/detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/model/home /data.dart';
import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../widget/icon_top.dart';
import 'components/body.dart';
import 'components/bottomAppBarDetail.dart';

class Detail extends BasePage {
  const Detail({
    required this.data,
    required this.product,
    Key? key,
  }) : super(key: key);
  final Data data;
  final Product product;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final _detailPresenter = injector.get<DetailPresenter>();
  @override
  void initState() {
    _detailPresenter.init(
      widget.product,
      widget.data,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<DetailPresenter, DetailState>(
      bloc: _detailPresenter,
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Stack(
                    children: [
                      Body(product: state.product),
                      Positioned(
                        top: 20,
                        left: 15,
                        right: 15,
                        child: SizedBox(
                          height: 50,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconTop(
                                icon: Icons.arrow_back_ios_new,
                                onTap: () => Navigator.pop(context),
                              ),
                              const Spacer(),
                              IconTop(icon: Icons.search, onTap: () {}),
                              const SizedBox(
                                width: 10,
                              ),
                              IconTop(
                                icon: Icons.shopping_cart,
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Cart(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              IconTop(icon: Icons.more_vert, onTap: () {}),
                            ],
                          ),
                        ),
                      ),
                      // Positioned(
                      //   bottom: 0,
                      //   top: size.height - 200,
                      //   child: Container(
                      //     height: 200,
                      //     decoration: BoxDecoration(color: Colors.blue),
                      //   ),
                      //       // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBarDetail(
          listProduct: [state.product],
        ),
      ),
    );
  }
}
