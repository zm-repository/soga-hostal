import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:soga_hostal/core/models/room_model.dart';
import 'package:soga_hostal/core/routes/routes.dart';

class RoomHomeItem extends StatelessWidget {
  const RoomHomeItem({
    Key? key,
    required this.room,
  }) : super(key: key);

  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoButton(
        onPressed: () {
          Navigator.pushNamed(context, DETAILS_ROOM, arguments: room);
        },
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                room.image.first,
                height: 350,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Color(0xff2A5D63).withOpacity(0.9)),
                child: Center(
                    child: Text(
                  "\$ ${room.price.toInt()}",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        room.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        room.bed,
                        style: TextStyle(
                            color: Color(0XFFFBCFFC),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RatingBarIndicator(
                        rating: room.rating,
                        direction: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Color(0xff2A5D63),
                        ),
                        itemCount: 5,
                        itemSize: 25.0,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
