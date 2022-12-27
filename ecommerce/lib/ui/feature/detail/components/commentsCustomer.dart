import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CommentCustomer extends StatelessWidget {
  const CommentCustomer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Đánh giá của khách hàng',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                'Xem Thêm',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
