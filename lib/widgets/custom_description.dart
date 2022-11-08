import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  final String type, opt;
  const CustomDescription({
    required this.opt,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(
          type,
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
         const SizedBox(
          height: 20,
        ),
        Text(
          opt,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
