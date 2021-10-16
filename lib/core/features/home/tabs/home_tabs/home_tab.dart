import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/home/tabs/home_tabs/widgets/other_services_widgets.dart';
import 'package:soga_hostal/core/features/home/tabs/home_tabs/widgets/room_view_widgets.dart';
import 'package:soga_hostal/core/models/other_services_model.dart';
import 'package:soga_hostal/core/models/room_model.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola Eder,',
                        style: TextStyle(
                            color: Color(0xff13505D),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Busquemos tu habitación',
                        style:
                            TextStyle(color: Color(0xff13505D), fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 15)
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/eder.jpg",
                        height: 65,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 12)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    cursorHeight: 23,
                    style: TextStyle(color: Color(0xff13505D), fontSize: 20),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff13505D),
                          size: 30,
                        ),
                        border: InputBorder.none,
                        hintText: 'Busca tu habitacion'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: RoomViewWidgets(
                onPressed: () {},
                title: 'Habitaciones',
                rooms: room,
                key: UniqueKey(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OtherServices(
              onPressed: () {},
              title: 'Otros Servicios',
              other: other,
            ),
          ],
        ),
      ),
    );
  }
}
