import 'package:flutter/material.dart';

class DeleteButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size.width * 0.25,
        height: size.width * 0.25,
        alignment: Alignment.center,
        child: Icon(
          Icons.backspace_outlined,
          size: 26,
        ),
      ),
    );
  }
}
