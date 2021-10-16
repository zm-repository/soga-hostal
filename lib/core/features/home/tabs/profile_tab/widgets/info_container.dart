import 'package:flutter/material.dart';
import 'package:soga_hostal/core/utils/colors.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1;

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            border: Border.all(color: secundaryColor.withOpacity(0.2)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,

                blurRadius: 10,
                // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: TextStyle(color: Colors.black26),
              ),
              Text(
                text2,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
