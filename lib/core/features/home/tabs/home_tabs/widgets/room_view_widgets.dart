import 'package:flutter/material.dart';
import 'package:soga_hostal/core/features/home/tabs/home_tabs/widgets/room_view_items_widgets.dart';
import 'package:soga_hostal/core/models/room_model.dart';

class RoomViewWidgets extends StatelessWidget {
  const RoomViewWidgets({
    Key? key,
    required this.rooms,
    required this.onPressed,
    required this.title,
  }) : super(key: key);
  final List<RoomModel> rooms;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 420,
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
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 15),
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: rooms.length,
                    itemBuilder: (_, index) {
                      final roomItem = rooms[index];
                      return RoomHomeItem(
                        room: roomItem,
                      );
                    })),
          ],
        ));
  }
}
