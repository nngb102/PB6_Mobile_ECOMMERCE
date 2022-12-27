import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: textEditingController,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search',
          // contentPadding: EdgeInsets.symmetric(
          //   horizontal: 35,
          //   vertical: 5,
          // ),
        ),
      ),
    );
  }
}
