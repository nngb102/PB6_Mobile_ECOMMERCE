import 'package:flutter/material.dart';

import '../../../widget/button_common.dart';
import '../../../widget/start.dart';

class InformationStore extends StatelessWidget {
  const InformationStore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
            ),
          ),
          Column(
            children: [
              const Text(
                'Teen Teen Store',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: const [
                  Star(check: true),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.2    | ',
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    '10 mặt hàng ',
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          ButtonCommon(
            txt: 'Truy Cập',
            onTap: () {},
            colorButton: Colors.white,
            colorText: Colors.black,
            height: 20,
            width: 70,
            fontText: 9,
            paddingHorizontal: 5,
            colorBorder: const Color(0xFFDEE1E6),
          )
        ],
      ),
    );
  }
}
