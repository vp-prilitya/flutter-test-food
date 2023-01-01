import 'package:flutter/material.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: const Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
          Text(
            "What do you want to watch",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
