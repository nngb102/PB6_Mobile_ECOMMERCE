import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/feature/page_discount/bloc/discount_presenter.dart';
import 'package:ecommerce/ui/feature/page_discount/bloc/discount_state.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:ecommerce/ui/widget/choose.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection/injector.dart';

class PageDiscount extends BasePage {
  const PageDiscount({Key? key}) : super(key: key);

  @override
  State<PageDiscount> createState() => _PageDiscountState();
}

class _PageDiscountState extends State<PageDiscount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.black,
              ),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text(
          'Ma Giam Gia',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Item(
                  index: index,
                )),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final discountPresenter = injector.get<DisCountPresenter>();
    final size = MediaQuery.of(context).size;
    return BlocBuilder<DisCountPresenter, DisCountState>(
      buildWhen: (previous, current) => previous.current != current.current,
      bloc: discountPresenter,
      builder: (context, state) => ClipPath(
        clipper: MyCustomTriangleClipper(),
        child: Container(
          height: 120,
          width: size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary, width: 0.7),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://cf.shopee.vn/file/a6ff372c86c4e242c76fb75f65ae7579',
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Giảm 30%',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.red),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Đơn tối thiểu 50k',
                      style: TextStyle(fontSize: 11),
                    ),
                    Text(
                      'HSD: 30.11.2022',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                    CustomPaint()
                  ],
                ),
              ),
              Choose(
                isChecked: index == state.current ? true : false,
                function: (bool? value) {
                  discountPresenter.onTapIndex(index);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 15;

    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomContainer oldDelegate) {
    return true;
  }
}

class MyCustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(old) {
    return old != this;
  }
}
