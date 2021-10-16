import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/home/tabs/home_tabs/widgets/other_services_items_widgets.dart';
import 'package:soga_hostal/core/models/other_services_model.dart';

class OtherServices extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final List<OtherServiceModel> other;

  const OtherServices(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.other})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff13505D),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 15),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: other.length,
                    itemBuilder: (_, index) {
                      final otherService = other[index];
                      return OtherServicesItemsWidgets(
                        other: otherService,
                      );
                    })),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
