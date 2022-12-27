import 'package:flutter/material.dart';

class Describe extends StatelessWidget {
  const Describe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Mô tả sản phẩm'),
          SizedBox(
            height: 500,
          )
        ],
      ),
    );
  }
}
