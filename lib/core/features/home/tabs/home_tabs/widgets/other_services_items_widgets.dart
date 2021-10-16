import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/models/other_services_model.dart';

class OtherServicesItemsWidgets extends StatelessWidget {
  final OtherServiceModel other;

  const OtherServicesItemsWidgets({Key? key, required this.other})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12.withOpacity(.1), blurRadius: 7)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
          width: 300,
          height: 150,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  other.image.first,
                  height: 150,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      other.name,
                      style: TextStyle(color: Color(0xff13505D), fontSize: 18),
                    ),
                    Text(
                      "Abierto:",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      other.open,
                      style: TextStyle(color: Color(0xff13505D), fontSize: 15),
                    ),
                    Text(
                      '\$ ${other.price}',
                      style: TextStyle(color: Color(0xff13505D), fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        onPressed: () {});
  }
}
