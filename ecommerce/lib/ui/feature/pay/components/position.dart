import 'package:ecommerce/ui/feature/page_map/page_map.dart';
import 'package:flutter/material.dart';

class Position extends StatelessWidget {
  const Position({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_pin,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Địa chỉ nhận hàng',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hùng Nguyễn',
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '088888181881',
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        '23 Đá Moc 5',
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageMap(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          )
        ],
      ),
    );
  }
}
